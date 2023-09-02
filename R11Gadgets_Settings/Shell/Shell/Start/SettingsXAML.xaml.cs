using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using Windows.ApplicationModel.Contacts;
using Windows.Storage;
using Windows.Storage.Streams;
using Windows.System;
using Windows.UI.Xaml.Controls;
using Windows.UI.Xaml.Controls.Primitives;
using Windows.UI.Xaml.Media.Animation;
using Windows.UI.Xaml.Media.Imaging;

// The Blank Page item template is documented at https://go.microsoft.com/fwlink/?LinkId=234238

namespace ShellApp.Shell.Start
{
    /// <summary>
    /// An empty page that can be used on its own or navigated to within a Frame.
    /// </summary>
    public sealed partial class SettingsXAML : UserControl
    {
        public SettingsXAML()
        {
            this.InitializeComponent();
            string pageName = "Shell.Shell.Start.SettingsPages.Welcome";
            Type pageType = Type.GetType(pageName);
            contentFrame.Navigate(pageType);
        }

        private void Settingsnav_SelectionChanged(Microsoft.UI.Xaml.Controls.NavigationView sender, Microsoft.UI.Xaml.Controls.NavigationViewSelectionChangedEventArgs args)
        {
            var selectedItem = (Microsoft.UI.Xaml.Controls.NavigationViewItem)args.SelectedItem;
            string pageName = "Shell.Shell.Start.SettingsPages." + ((string)selectedItem.Tag);
            Type pageType = Type.GetType(pageName);
            contentFrame.Navigate(pageType);
        }
    }
}
