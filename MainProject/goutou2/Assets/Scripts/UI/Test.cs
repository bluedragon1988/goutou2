using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using static UnityEngine.Rendering.DebugUI;
using cfg;
using Luban;
using UnityEngine.TextCore.Text;
using System.IO;

public class Test : MonoBehaviour
{
    cfg.Tables tables;
    void Start()
    {
        string gameConfDir = Application.dataPath + "/Gen/GenerateDatas/bytes"; // 替换为gen.bat中outputDataDir指向的目录
        tables = new cfg.Tables(file => new ByteBuf(File.ReadAllBytes($"{gameConfDir}/{file}.bytes")));
    }
    public void OnTestClick()
    {
        Debug.Log("点了一下你爹");
        Load();
    }
    public void Load()
    {
        foreach(var i in tables.TbItem.DataList)
        {
            Debug.Log(i.Desc);
        }
     }

    
}
