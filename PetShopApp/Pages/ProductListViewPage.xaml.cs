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
    /// Логика взаимодействия для ProductListViewPage.xaml
    /// </summary>
    public partial class ProductListViewPage : Page
    {
        public ProductListViewPage()
        {
            InitializeComponent();
            Init();
        }

        private void Init()
        {
            ProductListView.ItemsSource = Data.TradeEntities.GetContext().Product.ToList();
            ManufacturerComboBox.ItemsSource = Data.TradeEntities.GetContext().NameManufacturer.ToList();
        }

        private void ManufacturerComboBox_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {

        }

        private void SortDownRadioButton_Checked(object sender, RoutedEventArgs e)
        {

        }

        private void SortUpRadioButton_Checked(object sender, RoutedEventArgs e)
        {

        }

        private void SearchProductTextBox_TextChanged(object sender, TextChangedEventArgs e)
        {

        }

        private void EditButton_Click(object sender, RoutedEventArgs e)
        {

        }

        private void DeleteButton_Click(object sender, RoutedEventArgs e)
        {

        }

        private void AddButton_Click(object sender, RoutedEventArgs e)
        {
            Classes.Manager.MainFrame.Navigate(new Pages.AddEditPage());
        }
    }
}
