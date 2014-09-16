using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;

public abstract class BasePage : Page {
    public abstract string PageName { get; }
}