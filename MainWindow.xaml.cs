using System;
using System.Collections.Generic;
using System.Globalization;
using System.Linq;
using System.Text;
using System.Threading;
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
using TransportLinesLib;

namespace WpfApp2
{
    /// <summary>
    /// Logique d'interaction pour MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
            public MainWindow()
            {
                // variable d'environnement CurrentCulture -> en-US pour que la virgule décimale soit en point lorsqu'on convertit un integer en string (appelle à l'api Métro)
                Thread.CurrentThread.CurrentCulture = CultureInfo.GetCultureInfo("en-US");

                InitializeComponent();

            }

            private void Button_Click(object sender, RoutedEventArgs e)
            {
                TransportLineStop tls = new TransportLineStop();
                tls.searchLineStop(Convert.ToDouble(lat.Text), Convert.ToDouble(lon.Text), Convert.ToInt16(dist.Text));

                List<String> listecr = new List<String>();

                /* avec listbox renseigné à partir d'une list
                foreach (LineStop ls in tls.lStops)
                {
                    listecr.Add("STOP " + ls.id + " " + ls.name + " - Position : " + Convert.ToString(ls.lon) + " / " + Convert.ToString(ls.lat));
                    foreach (TransportLine tl in ls.tlines)
                    {
                        listecr.Add("     LINE " + tl.id + " " + tl.longName + " " + tl.mode);
                    } 

                }
                 listtls.ItemsSource = listecr;
                */

                gridtls.ItemsSource = tls.lStops;

            }

            private void gridtls_SelectionChanged(object sender, SelectionChangedEventArgs e)
            {
                var grid = sender as DataGrid;
                if (grid.SelectedItems.Count > 0)
                {
                    var selected = grid.SelectedItems[0] as LineStop;

                    gridtl.ItemsSource = selected.tlines;
                    tlsName.Text = selected.id + " " + selected.name;
                }
                else
                {
                    gridtl.ItemsSource = null;
                    tlsName.Text = null;
                }
            }

    }
}
