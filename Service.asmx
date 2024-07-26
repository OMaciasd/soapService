<%@ WebService Language="C#" Class="MyService" %>

using System;
using System.Web.Services;

public class MyService : WebService
{
    [WebMethod]
    public string HelloWorld()
    {
        return "Hello, World!";
    }
}
