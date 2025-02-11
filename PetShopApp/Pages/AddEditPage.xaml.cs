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
    /// Логика взаимодействия для AddEditPage.xaml
    /// </summary>
    public partial class AddEditPage : Page
    {
        public Data.Product CurrentProduct = new Data.Product();
        public string FlagAddOrEdit = "default";
        public AddEditPage(Data.Product _product)
        {
            InitializeComponent();
            if (_product != null)
            {
                CurrentProduct = _product;
                FlagAddOrEdit = "edit";
            }
            DataContext = CurrentProduct;
            Init();
        }

        public void Init()
        {
            CategoryComboBox.ItemsSource = Data.TradeEntities.GetContext().ProductCategory.ToList();
            if (FlagAddOrEdit == "add")
            {
                ProductNameTextBox.Text = string.Empty;
                CategoryComboBox.SelectedItem = null;
                ProductQuantityInStockTextBox.Text = string.Empty;
                UnitTextBox.Text = string.Empty;
                SupplierTextBox.Text = string.Empty;
                ProductCostTextBox.Text = string.Empty;
                ProductDescriptionTextBox.Text = string.Empty;
            }
            else if (FlagAddOrEdit == "edit")
            {
                ProductNameTextBox.Text = CurrentProduct.ProductName.Name;
                CategoryComboBox.SelectedItem = Data.TradeEntities.GetContext().ProductCategory
                    .Where(d => d.Id == CurrentProduct.IdProductCategory).FirstOrDefault();
                ProductQuantityInStockTextBox.Text = CurrentProduct.ProductQuantityInStock.ToString();
                UnitTextBox.Text = CurrentProduct.NameUnit.Unit;
                SupplierTextBox.Text = CurrentProduct.NameSupplier.Supplier;
                ProductCostTextBox.Text = CurrentProduct.ProductCost.ToString();
                ProductDescriptionTextBox.Text = CurrentProduct.ProductDescription;
            }
        }

        private void AddButton_Click(object sender, RoutedEventArgs e)
        {
            try
            {
                StringBuilder errors = new StringBuilder();
                if (string.IsNullOrEmpty(ProductNameTextBox.Text))
                {
                    errors.AppendLine("Введите название товара!");
                }
                if (CategoryComboBox.SelectedItem == null)
                {
                    errors.AppendLine("Выбирете категорию товара!");
                }
                if (string.IsNullOrEmpty(ProductQuantityInStockTextBox.Text))
                {
                    errors.AppendLine("Введите кол-во на складе!");
                }
                if (string.IsNullOrEmpty(UnitTextBox.Text))
                {
                    errors.AppendLine("Введите ед. измерения!");
                }
                if (string.IsNullOrEmpty(SupplierTextBox.Text))
                {
                    errors.AppendLine("Введите поставщика!");
                }
                if (string.IsNullOrEmpty(ProductCostTextBox.Text))
                {
                    errors.AppendLine("Введите стоимость!");
                }
                if (string.IsNullOrEmpty(ProductDescriptionTextBox.Text))
                {
                    errors.AppendLine("Введите описание товара!");
                }
                if(UnitTextBox.Text != ".шт")
                {
                    errors.AppendLine("Ай, Ай, Ай, нельзя другую ед. измерения использовать!");
                }
                var cost = Convert.ToInt32(ProductCostTextBox.Text);
                if(cost < 0)
                {
                    errors.AppendLine("АЙ, АЙ, АЙ, нельзя использовать отрицательные числа!");
                }
            }
            catch(Exception ex)
            {
                MessageBox.Show(ex.ToString(), "Ошибка!", MessageBoxButton.OK, MessageBoxImage.Error);
            }
        }

        private void BackButton_Click(object sender, RoutedEventArgs e)
        {
            Classes.Manager.MainFrame.Navigate(new Pages.ProductListViewPage());
        }
    }
}
