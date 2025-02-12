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
        public Int32 FlagFaild = 0;
        public AddEditPage(Data.Product _product)
        {
            InitializeComponent();
            if (_product != null)
            {
                CurrentProduct = _product;
                FlagAddOrEdit = "edit";
            }
            else
            {
                FlagAddOrEdit = "add";
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
                if (errors.Length > 0)
                {
                    MessageBox.Show(errors.ToString(), "Ошибка!", MessageBoxButton.OK, MessageBoxImage.Error);
                    return;
                }
                if (UnitTextBox.Text != ".шт")
                {
                    FlagFaild++;
                    if (FlagFaild == 1)
                    {
                        MessageBox.Show("АЙ, АЙ, АЙ нельзя использовать другую ед. измерения!!!!!", "Ошибка!", MessageBoxButton.OK, MessageBoxImage.Error);
                    }

                    if (FlagFaild == 2)
                    {
                        MessageBox.Show("Не злите, нельзя значит нельзя!!!!!!", "Ошибка!", MessageBoxButton.OK, MessageBoxImage.Error);
                    }

                    if (FlagFaild == 3)
                    {
                        MessageBox.Show("Тест на шуникула пройдет успешно, Поздравляем!", "Ура!", MessageBoxButton.OK, MessageBoxImage.Exclamation);
                    }
                    return;
                }

                var searchProduct = (from item in Data.TradeEntities.GetContext().ProductName
                                     where item.Name == ProductNameTextBox.Text
                                     select item).FirstOrDefault();
                if (searchProduct != null)
                {
                    CurrentProduct.IdProductName = searchProduct.Id;
                }
                else
                {
                    Data.ProductName productName = new Data.ProductName()
                    {
                        Name = ProductNameTextBox.Text
                    };
                    Data.TradeEntities.GetContext().ProductName.Add(productName);
                    Data.TradeEntities.GetContext().SaveChanges();
                    CurrentProduct.IdProductName = productName.Id;
                }

                var searchSupplier = (from item in Data.TradeEntities.GetContext().NameSupplier
                                          where item.Supplier == SupplierTextBox.Text
                                          select item).FirstOrDefault();
                    if (searchSupplier != null)
                    {
                        CurrentProduct.IdProductSupplier = searchSupplier.Id;
                    }
                    else
                    {
                        Data.NameSupplier productSupplier = new Data.NameSupplier()
                        {
                            Supplier = SupplierTextBox.Text
                        };
                        Data.TradeEntities.GetContext().NameSupplier.Add(productSupplier);
                        Data.TradeEntities.GetContext().SaveChanges();
                        CurrentProduct.IdProductSupplier = productSupplier.Id;
                    }

                    

                    var searchUnit = (from item in Data.TradeEntities.GetContext().NameUnit
                                      where item.Unit == UnitTextBox.Text
                                      select item).FirstOrDefault();
                    if (searchUnit != null)
                    {
                        CurrentProduct.IdNameUnit = searchUnit.Id;
                    }
                    else
                    {
                        Data.NameUnit productUnit = new Data.NameUnit()
                        {
                            Unit = UnitTextBox.Text
                        };
                        Data.TradeEntities.GetContext().NameUnit.Add(productUnit);
                        Data.TradeEntities.GetContext().SaveChanges();
                        CurrentProduct.IdNameUnit = productUnit.Id;
                    }

                    CurrentProduct.ProductDescription = ProductDescriptionTextBox.Text;
                    var selectCategory = CategoryComboBox.SelectedItem as Data.ProductCategory;
                    CurrentProduct.IdProductCategory = selectCategory.Id;
                    CurrentProduct.ProductQuantityInStock = Convert.ToInt32(ProductQuantityInStockTextBox.Text);
                    CurrentProduct.ProductCost = Convert.ToDecimal(ProductCostTextBox.Text);

                    if (FlagAddOrEdit == "add")
                    {
                        Data.TradeEntities.GetContext().Product.Add(CurrentProduct);
                        Data.TradeEntities.GetContext().SaveChanges();
                        MessageBox.Show("Успешно добавлено!", "Успех!", MessageBoxButton.OK, MessageBoxImage.Information);
                    }
                    else if (FlagAddOrEdit == "edit")
                    {
                        Data.TradeEntities.GetContext().SaveChanges();
                        MessageBox.Show("Успешно сохранено!", "Успех!", MessageBoxButton.OK, MessageBoxImage.Information);
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
