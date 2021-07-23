<%@ WebHandler Language="C#" Class="N25175_Leader_SearchItem" %>

using System;
using System.Web;
using Jayrock.Json;
using Repair_BLL;
using System.Data;
public class N25175_Leader_SearchItem : IHttpHandler {
    
    public void ProcessRequest (HttpContext context) {
        context.Response.ContentType = "text/plain";
        //String li = context.Request["query"].ToString();
        if (context.Request["query"] != null && context.Request["query"].ToString() != String.Empty)
        {
            JsonObject result = new JsonObject();
            JsonArray suggestions = new JsonArray();
            String query = context.Request["query"].ToString();
            N25175_Leader_BLL leader = new N25175_Leader_BLL();

            DataTable data = leader.GetAutoComplete(query);

            foreach (DataRow row in data.Rows)
            {
                JsonObject item = new JsonObject();

                item.Accumulate("value", row["l_name"].ToString());
                item.Accumulate("data", row["l_id"].ToString());
                item.Accumulate("l_number", row["l_number"].ToString());

                suggestions.Add(item);
            }

            result.Accumulate("suggestions", suggestions);

            context.Response.Write(result);
            context.Response.End();
        }
        else
        {
            context.Response.Write("[]");
            context.Response.End();
        }
    }
 
    public bool IsReusable {
        get {
            return false;
        }
    }

}