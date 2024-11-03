<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
var menus = [

	{
        "backMenu":[
			{
			    "child":[
			        {
			            "buttons":[
			                "查看",
			                "新增",
			                "修改",
			                "删除"
			            ],
			            "menu":"用户表管理",
			            "menuJump":"列表",
			            "tableName":"yonghu"
			        }
			    ],
			    "menu":"用户表管理"
			}
            ,{
                "child":[
                    {
                        "buttons":[
                            "查看",
                            "删除"
                        ],
                        "menu":"相册信息管理",
                        "menuJump":"列表",
                        "tableName":"xiangche"
                    }
                ],
                "menu":"相册信息管理"
            },
			{
			    "child":[
			        {
			            "buttons":[
			                "查看",
			                "新增",
			                "修改",
			                "删除"
			            ],
			            "menu":"相片类型管理",
			            "menuJump":"列表",
			            "tableName":"dictionary_fenlei"
			        }
			    ],
			    "menu":"相片类型管理"
			}
            ,{
                "child":[
                    {
                        "buttons":[
                            "修改",
                            "删除"
                        ],
                        "menu":"相片评论信息",
                        "menuJump":"列表",
                        "tableName":"discussxiangpian"
                    }
                ],
                "menu":"相片评论管理"
            }
            ,{
                "child":[
                    {
                        "buttons":[
                            "查看",
                            "新增",
                            "修改",
                            "删除"
                        ],
                        "menu":"新闻资讯管理",
                        "menuJump":"列表",
                        "tableName":"news"
                    }
                ],
                "menu":"新闻资讯管理"
            }
            ,{
                "child":[
                    {
                        "buttons":[
                            "查看",
                            "删除"
                        ],
                        "menu":"收藏表管理",
                        "menuJump":"列表",
                        "tableName":"storeup"
                    }
                ],
                "menu":"收藏表管理"
            },
			{
			    "child":[
			        {
			            "buttons":[
			                "查看",
			                "删除",
							"修改"
			            ],
			            "menu":"客服管理",
			            "menuJump":"列表",
			            "tableName":"kefuguanli"
			        }
			    ],
			    "menu":"客服管理"
			},
			{
			    "child":[
			        {
			            "buttons":[
			                "查看",
							"新增",
							"修改",
			                "删除"
			            ],
			            "menu":"轮播图信息",
			            "menuJump":"列表",
			            "tableName":"lunbotuguanli"
			        }
			    ],
			    "menu":"轮播图管理"
			}
        ],
        "frontMenu":[

        ],
        "roleName":"管理员",
        "tableName":"users"
    }
	,
	{
	    "backMenu":[
	        {
	            "child":[
	                {
	                    "buttons":[
	                        "查看",
	                        "新增",
	                        "添加相片",
	                        "删除"
	                    ],
	                    "menu":"相册信息管理",
	                    "menuJump":"列表",
	                    "tableName":"xiangche"
	                }
	            ],
	            "menu":"相册信息管理"
	        },
			{
			    "child":[
			        {
			            "buttons":[
			                "查看",
			            ],
			            "menu":"相片类型管理",
			            "menuJump":"列表",
			            "tableName":"dictionary_fenlei"
			        }
			    ],
			    "menu":"相片类型管理"
			}
	        ,{
	            "child":[
	                {
	                    "buttons":[
	                        "删除"
	                    ],
	                    "menu":"相片评论信息",
	                    "menuJump":"列表",
	                    "tableName":"discussxiangpian"
	                }
	            ],
	            "menu":"相片评论管理"
	        }
	        ,{
	            "child":[
	                {
	                    "buttons":[
	                        "查看",
	                    ],
	                    "menu":"新闻资讯管理",
	                    "menuJump":"列表",
	                    "tableName":"news"
	                }
	            ],
	            "menu":"新闻资讯管理"
	        }
	        ,{
	            "child":[
	                {
	                    "buttons":[
	                        "查看",
	                        "删除"
	                    ],
	                    "menu":"收藏表管理",
	                    "menuJump":"列表",
	                    "tableName":"storeup"
	                }
	            ],
	            "menu":"收藏表管理"
	        }
	    ],
	    "frontMenu":[
	
	    ],
	    "roleName":"用户",
	    "tableName":"yonghu"
	}
];

var hasMessage = '';