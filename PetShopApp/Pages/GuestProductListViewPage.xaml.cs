using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;

namespace PetShopApp.Pages
{
    /// <summary>
    /// Логика взаимодействия для GuestProductListViewPage.xaml
    /// </summary>
    public partial class GuestProductListViewPage : Page
    {
        public GuestProductListViewPage()
        {
            InitializeComponent();
            Init();
            Update();
        }

        private void Init()
        {
            try
            {
                ProductListView.ItemsSource = Data.TradeEntities.GetContext().Product.ToList();
                ManufacturerComboBox.ItemsSource = Data.TradeEntities.GetContext().NameManufacturer.ToList();

                var manufacturerSelected = Data.TradeEntities.GetContext().NameManufacturer.ToList();
                manufacturerSelected.Insert(0, new Data.NameManufacturer { Manufacturer = "Все производители" });
                ManufacturerComboBox.ItemsSource = manufacturerSelected;
                ManufacturerComboBox.SelectedIndex = 0;
            }
            catch
            {

            }
        }

        public List<Data.Product> _product = Data.TradeEntities.GetContext().Product.ToList();
        private void Update()
        {
            try
            {
                _product = Data.TradeEntities.GetContext().Product.ToList();
                if (!string.IsNullOrEmpty(SearchProductTextBox.Text))
                {
                    _product = (from item in Data.TradeEntities.GetContext().Product.ToList()
                                where item.ProductName.Name.ToLower().Contains(SearchProductTextBox.Text.ToLower()) ||
                                item.NameManufacturer.Manufacturer.ToLower().Contains(SearchProductTextBox.Text.ToLower()) ||
                                item.ProductDescription.ToLower().Contains(SearchProductTextBox.Text.ToLower()) ||
                                item.ProductQuantityInStock.ToString().ToLower().Contains(SearchProductTextBox.Text.ToLower())
                                select item).ToList();
                }
                if (SortUpRadioButton.IsChecked == true)
                {
                    _product = _product.OrderBy(d => d.ProductCost).ToList();
                }
                if (SortDownRadioButton.IsChecked == true)
                {
                    _product = _product.OrderByDescending(d => d.ProductCost).ToList();
                }

                var selected = ManufacturerComboBox.SelectedItem as Data.NameManufacturer;
                if (selected != null && selected.Manufacturer != "Все производители")
                {
                    _product = _product.Where(d => d.Id == selected.Id).ToList();
                }
                ProductListView.ItemsSource = _product;

            }
            catch
            {

            }
        }
        private void ManufacturerComboBox_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {
            Update();
        }

        private void SortDownRadioButton_Checked(object sender, RoutedEventArgs e)
        {
            Update();
        }

        private void SortUpRadioButton_Checked(object sender, RoutedEventArgs e)
        {
            Update();
        }

        private void SearchProductTextBox_TextChanged(object sender, TextChangedEventArgs e)
        {
            Update();
        }

    }
}
