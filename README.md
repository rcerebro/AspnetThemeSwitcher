How to implement a Theme Selector control similar to DevExpress Demo
The sample provides a web user control(ThemeSelector) that can be used in your project. To use this control in your solution, execute these steps:
1. Copy following files, taking into account their location:
   a. an xml file with theme groups and themes: Themes.xml.
   b. classes that are responsible for getting and presenting data from Themes.xml: ThemeGroupModel.cs, ThemeModel.cs, ThemeModelBase.cs, ThemesModel.cs.
   c. Sprite.png with images.
   d. ThemeSelector.css with css classes.
   e. ThemeSelector.ascx and ThemeSelector.ascx.cs.
2. Register the ThemeSelector web user control in your web.config file:
<pages>
  <controls>
    <add src="~/UserControl/ThemeSelector.ascx" tagName="ThemeSelector" tagPrefix="dx" />
  </controls>
</pages>
3. In the sample, a chosen theme is written to a cookie. To apply this theme from the cookie, subscribe to the Application.PreRequestHandlerExecute in your Global.asax file and handle it
in the following manner:
protected void Application_PreRequestHandlerExecute(object sender, EventArgs e) {
    if(Request.Cookies["CurrentThemeCookieKey"] != null) {
        DevExpress.Web.ASPxWebControl.GlobalTheme = Request.Cookies["CurrentThemeCookieKey"].Value;
    }
}
4. The ThemeSelector control allows you to show a popup left or right relative to the "Themes" anchor. Use the ThemeSelector.PopupAlign property. The default value is PopupAlign.Right. 
<dx:ThemeSelector runat="server" ID="ts2" PopupAlign="Left" />

Starting with v17.2 we have changed our Theme Selector implementation. Now, this user control is placed to ASPxPanel and is mobile friendly. A new sample can be found in the following thread: How to implement a Theme Selector control similar to DevExpress Demo
