## 构建镜像
初始化git子模块
```bash
git submodule init
git submodule update
```

docker build
```bash
docker build -t label-studio-converter .
```

## 使用镜像转换数据
label studio config.xml
```xml
<View className="txt-wrap">
    <View/>
    <View>
        <View style="width: 100%">
            <View style="display: flex;width: 100%">
                <Header value="点集" style="line-height: 52px;margin-right:4px;flex: none;width: 100px;font-size: 16px"/>
                <View style="display: flex; flex-wrap: wrap">
                    <KeyPointLabels strokewidth="4" opacity="1" name=":2-_-0-labels-ts" showInline="true" toName="ts">
                        <View style="margin-right: 8px" className="star-flag">
                            <Label background="red" value="点集属性125"/>
                        </View>
                    </KeyPointLabels>
                </View>
            </View>
        </View>
        <View visibleWhen="region-selected" whenTagName=":2-_-0-labels-ts" whenLabelValue="点集属性125">
            <View style="padding-bottom: 15px">
                <View style="width:100%;overflow:hidden;display: flex;height: unset;padding-bottom: 40px;">
                    <Header style="font-weight: normal;font-size: 14px;line-height: 40px;margin-right:4px;flex: none;width: 100px;overflow:hidden;white-space:nowrap;text-overflow:ellipsis" value="属性多选一"/>
                    <TextArea name=":2-3-1-0-属性多选一-label-0-0" toName="ts" rows="2" maxSubmissions="1" perRegion="true"/>
                </View>
            </View>
        </View>
    </View>
    <View>
        <View style="width: 100%">
            <View style="display: flex;width: 100%">
                <Header value="矩形" style="line-height: 52px;margin-right:4px;flex: none;width: 100px;font-size: 16px"/>
                <View style="display: flex; flex-wrap: wrap">
                    <RectangleLabels canRotate="false" name=":4-_-0-labels-ts" showInline="true" toName="ts">
                        <View style="margin-right: 8px" className="star-flag">
                            <Label background="red" value="矩形多属性"/>
                        </View>
                    </RectangleLabels>
                </View>
            </View>
        </View>
        <View visibleWhen="region-selected" whenTagName=":4-_-0-labels-ts" whenLabelValue="矩形多属性">
            <View style="padding-bottom: 15px">
                <View style="display: flex; flex-wrap: wrap;">
                    <Header style="font-weight: normal;font-size: 14px;line-height: 40px;margin-right:4px;flex: none;width: 100px;overflow:hidden;white-space:nowrap;text-overflow:ellipsis" value="矩形多属性"/>
                    <Choices name=":4-1-1-矩形多属性-label-0-0" toName="ts" showInline="true" perRegion="true">
                        <Choice value="单选题"/>
                        <Choice value="多选题"/>
                    </Choices>
                </View>
                <View style="display: flex; flex-wrap: wrap;">
                    <Header style="font-weight: normal;font-size: 14px;line-height: 40px;margin-right:4px;flex: none;width: 100px;overflow:hidden;white-space:nowrap;text-overflow:ellipsis" value="多选属性28"/>
                    <Choices name=":4-2-1-多选属性28-label-0-1" toName="ts" showInline="true" perRegion="true" choice="multiple">
                        <Choice value="多选一"/>
                        <Choice value="多选二"/>
                    </Choices>
                </View>
            </View>
        </View>
    </View>
    <View>
        <View style="width: 100%">
            <View style="display: flex;width: 100%">
                <Header value="多边形" style="line-height: 52px;margin-right:4px;flex: none;width: 100px;font-size: 16px"/>
                <View style="display: flex; flex-wrap: wrap">
                    <PolygonLabels strokeWidth="3" opacity="0.9" pointSize="small" name=":5-_-0-labels-ts" showInline="true" toName="ts">
                        <View style="margin-right: 8px" className="star-flag">
                            <Label background="red" value="多边形多选择"/>
                        </View>
                    </PolygonLabels>
                </View>
            </View>
        </View>
        <View visibleWhen="region-selected" whenTagName=":5-_-0-labels-ts" whenLabelValue="多边形多选择">
            <View style="padding-bottom: 15px">
                <View style="display: flex; flex-wrap: wrap;">
                    <Header style="font-weight: normal;font-size: 14px;line-height: 40px;margin-right:4px;flex: none;width: 100px;overflow:hidden;white-space:nowrap;text-overflow:ellipsis" value="属性一"/>
                    <Choices name=":5-1-1-属性一-label-0-0" toName="ts" showInline="true" perRegion="true">
                        <Choice value="单选一"/>
                        <Choice value="单选二"/>
                        <Choice value="单选三"/>
                    </Choices>
                </View>
                <View style="display: flex; flex-wrap: wrap;">
                    <Header style="font-weight: normal;font-size: 14px;line-height: 40px;margin-right:4px;flex: none;width: 100px;overflow:hidden;white-space:nowrap;text-overflow:ellipsis" value="多选一"/>
                    <Choices name=":5-2-1-多选一-label-0-1" toName="ts" showInline="true" perRegion="true"  choice="multiple">
                        <Choice value="多选125"/>
                        <Choice value="多选258"/>
                    </Choices>
                </View>
                <View style="width:100%;overflow:hidden;display: flex;height: unset;padding-bottom: 40px;">
                    <Header style="font-weight: normal;font-size: 14px;line-height: 40px;margin-right:4px;flex: none;width: 100px;overflow:hidden;white-space:nowrap;text-overflow:ellipsis" value="文本属性"/>
                    <TextArea name=":5-3-1-0-文本属性-label-0-2" toName="ts" rows="2" maxSubmissions="1" perRegion="true"/>
                </View>
            </View>
        </View>
       <view>
         <Header value="全图" style="line-height: 52px;margin-right:4px;flex: none;width: 100px;font-size: 16px"/>
        <Choices name="choice" toName="ts" showInLine="true">
          <Choice value="全图标签1" background="blue"/>
          <Choice value="全图标签2" background="green" />
        </Choices>
      </view>
    </View>
    <Image name="ts" zoom="true" width="360px" maxWidth="unset" value="$image"/>
</View>
```

label studio annotation.json
```json
[
    {
        "id": 127559,
        "annotations": [
            {
                "id": 16,
                "completed_by": 1,
                "result": [
                    {
                        "value": {
                            "choices": [
                                "全图标签1"
                            ]
                        },
                        "id": "xhHKu2D00-",
                        "from_name": "choice",
                        "to_name": "ts",
                        "type": "choices",
                        "origin": "manual"
                    },
                    {
                        "original_width": 1024,
                        "original_height": 754,
                        "image_rotation": 0,
                        "value": {
                            "points": [
                                [
                                    37.22222222222222,
                                    26.79245283018868
                                ],
                                [
                                    47.5,
                                    38.113207547169814
                                ],
                                [
                                    25.27777777777778,
                                    52.83018867924528
                                ]
                            ],
                            "polygonlabels": [
                                "多边形多选择"
                            ]
                        },
                        "id": "tPraFkh35e",
                        "from_name": ":5-_-0-labels-ts",
                        "to_name": "ts",
                        "type": "polygonlabels",
                        "origin": "manual"
                    },
                    {
                        "original_width": 1024,
                        "original_height": 754,
                        "image_rotation": 0,
                        "value": {
                            "points": [
                                [
                                    37.22222222222222,
                                    26.79245283018868
                                ],
                                [
                                    47.5,
                                    38.113207547169814
                                ],
                                [
                                    25.27777777777778,
                                    52.83018867924528
                                ]
                            ],
                            "choices": [
                                "单选一"
                            ]
                        },
                        "id": "tPraFkh35e",
                        "from_name": ":5-1-1-属性一-label-0-0",
                        "to_name": "ts",
                        "type": "choices",
                        "origin": "manual"
                    },
                    {
                        "original_width": 1024,
                        "original_height": 754,
                        "image_rotation": 0,
                        "value": {
                            "points": [
                                [
                                    37.22222222222222,
                                    26.79245283018868
                                ],
                                [
                                    47.5,
                                    38.113207547169814
                                ],
                                [
                                    25.27777777777778,
                                    52.83018867924528
                                ]
                            ],
                            "choices": [
                                "多选258"
                            ]
                        },
                        "id": "tPraFkh35e",
                        "from_name": ":5-2-1-多选一-label-0-1",
                        "to_name": "ts",
                        "type": "choices",
                        "origin": "manual"
                    },
                    {
                        "original_width": 1024,
                        "original_height": 754,
                        "image_rotation": 0,
                        "value": {
                            "points": [
                                [
                                    37.22222222222222,
                                    26.79245283018868
                                ],
                                [
                                    47.5,
                                    38.113207547169814
                                ],
                                [
                                    25.27777777777778,
                                    52.83018867924528
                                ]
                            ],
                            "text": [
                                "farfw"
                            ]
                        },
                        "id": "tPraFkh35e",
                        "from_name": ":5-3-1-0-文本属性-label-0-2",
                        "to_name": "ts",
                        "type": "textarea",
                        "origin": "manual"
                    },
                    {
                        "original_width": 1024,
                        "original_height": 754,
                        "image_rotation": 0,
                        "value": {
                            "points": [
                                [
                                    71.66666666666667,
                                    30.943396226415093
                                ],
                                [
                                    67.5,
                                    32.45283018867924
                                ],
                                [
                                    73.61111111111111,
                                    27.92452830188679
                                ],
                                [
                                    94.44444444444444,
                                    29.81132075471698
                                ],
                                [
                                    81.94444444444444,
                                    30.18867924528302
                                ]
                            ],
                            "polygonlabels": [
                                "多边形多选择"
                            ]
                        },
                        "id": "HSfD5dAMG3",
                        "from_name": ":5-_-0-labels-ts",
                        "to_name": "ts",
                        "type": "polygonlabels",
                        "origin": "manual"
                    },
                    {
                        "original_width": 1024,
                        "original_height": 754,
                        "image_rotation": 0,
                        "value": {
                            "points": [
                                [
                                    71.66666666666667,
                                    30.943396226415093
                                ],
                                [
                                    67.5,
                                    32.45283018867924
                                ],
                                [
                                    73.61111111111111,
                                    27.92452830188679
                                ],
                                [
                                    94.44444444444444,
                                    29.81132075471698
                                ],
                                [
                                    81.94444444444444,
                                    30.18867924528302
                                ]
                            ],
                            "choices": [
                                "单选一"
                            ]
                        },
                        "id": "HSfD5dAMG3",
                        "from_name": ":5-1-1-属性一-label-0-0",
                        "to_name": "ts",
                        "type": "choices",
                        "origin": "manual"
                    },
                    {
                        "original_width": 1024,
                        "original_height": 754,
                        "image_rotation": 0,
                        "value": {
                            "points": [
                                [
                                    71.66666666666667,
                                    30.943396226415093
                                ],
                                [
                                    67.5,
                                    32.45283018867924
                                ],
                                [
                                    73.61111111111111,
                                    27.92452830188679
                                ],
                                [
                                    94.44444444444444,
                                    29.81132075471698
                                ],
                                [
                                    81.94444444444444,
                                    30.18867924528302
                                ]
                            ],
                            "choices": [
                                "多选258"
                            ]
                        },
                        "id": "HSfD5dAMG3",
                        "from_name": ":5-2-1-多选一-label-0-1",
                        "to_name": "ts",
                        "type": "choices",
                        "origin": "manual"
                    },
                    {
                        "original_width": 1024,
                        "original_height": 754,
                        "image_rotation": 0,
                        "value": {
                            "points": [
                                [
                                    71.66666666666667,
                                    30.943396226415093
                                ],
                                [
                                    67.5,
                                    32.45283018867924
                                ],
                                [
                                    73.61111111111111,
                                    27.92452830188679
                                ],
                                [
                                    94.44444444444444,
                                    29.81132075471698
                                ],
                                [
                                    81.94444444444444,
                                    30.18867924528302
                                ]
                            ],
                            "text": [
                                "fwf"
                            ]
                        },
                        "id": "HSfD5dAMG3",
                        "from_name": ":5-3-1-0-文本属性-label-0-2",
                        "to_name": "ts",
                        "type": "textarea",
                        "origin": "manual"
                    },
                    {
                        "original_width": 1024,
                        "original_height": 754,
                        "image_rotation": 0,
                        "value": {
                            "x": 11.944444444444445,
                            "y": 12.452830188679245,
                            "width": 12.777777777777779,
                            "height": 14.716981132075471,
                            "rotation": 0,
                            "rectanglelabels": [
                                "矩形多属性"
                            ]
                        },
                        "id": "9shP5WEVWp",
                        "from_name": ":4-_-0-labels-ts",
                        "to_name": "ts",
                        "type": "rectanglelabels",
                        "origin": "manual"
                    },
                    {
                        "original_width": 1024,
                        "original_height": 754,
                        "image_rotation": 0,
                        "value": {
                            "x": 11.944444444444445,
                            "y": 12.452830188679245,
                            "width": 12.777777777777779,
                            "height": 14.716981132075471,
                            "rotation": 0,
                            "choices": [
                                "单选题"
                            ]
                        },
                        "id": "9shP5WEVWp",
                        "from_name": ":4-1-1-矩形多属性-label-0-0",
                        "to_name": "ts",
                        "type": "choices",
                        "origin": "manual"
                    },
                    {
                        "original_width": 1024,
                        "original_height": 754,
                        "image_rotation": 0,
                        "value": {
                            "x": 11.944444444444445,
                            "y": 12.452830188679245,
                            "width": 12.777777777777779,
                            "height": 14.716981132075471,
                            "rotation": 0,
                            "choices": [
                                "多选二"
                            ]
                        },
                        "id": "9shP5WEVWp",
                        "from_name": ":4-2-1-多选属性28-label-0-1",
                        "to_name": "ts",
                        "type": "choices",
                        "origin": "manual"
                    },
                    {
                        "original_width": 1024,
                        "original_height": 754,
                        "image_rotation": 0,
                        "value": {
                            "x": 53.05555555555556,
                            "y": 17.735849056603772,
                            "width": 1.1111111111111112,
                            "keypointlabels": [
                                "点集属性125"
                            ]
                        },
                        "id": "Mfj7dvCBCZ",
                        "from_name": ":2-_-0-labels-ts",
                        "to_name": "ts",
                        "type": "keypointlabels",
                        "origin": "manual"
                    },
                    {
                        "original_width": 1024,
                        "original_height": 754,
                        "image_rotation": 0,
                        "value": {
                            "x": 53.05555555555556,
                            "y": 17.735849056603772,
                            "width": 1.1111111111111112,
                            "text": [
                                "fr"
                            ]
                        },
                        "id": "Mfj7dvCBCZ",
                        "from_name": ":2-3-1-0-属性多选一-label-0-0",
                        "to_name": "ts",
                        "type": "textarea",
                        "origin": "manual"
                    }
                ],
                "was_cancelled": false,
                "ground_truth": false,
                "created_at": "2022-10-13T03:10:10.585444Z",
                "updated_at": "2022-10-13T03:10:10.585444Z",
                "lead_time": 61.479,
                "prediction": {},
                "result_count": 0,
                "task": 127559,
                "parent_prediction": null,
                "parent_annotation": null
            }
        ],
        "file_upload": "9906907e-1_Handshaking_Handshaking_1_85.jpg",
        "drafts": [],
        "predictions": [],
        "data": {
            "image": "\/data\/upload\/13\/9906907e-1_Handshaking_Handshaking_1_85.jpg"
        },
        "meta": {},
        "created_at": "2022-10-13T02:34:21.572359Z",
        "updated_at": "2022-10-13T03:10:10.625600Z",
        "inner_id": 3,
        "total_annotations": 1,
        "cancelled_annotations": 0,
        "total_predictions": 0,
        "project": 13,
        "updated_by": 1
    },
    {
        "id": 127558,
        "annotations": [
            {
                "id": 15,
                "completed_by": 1,
                "result": [
                    {
                        "value": {
                            "choices": [
                                "全图标签2"
                            ]
                        },
                        "id": "gGMraDCGQL",
                        "from_name": "choice",
                        "to_name": "ts",
                        "type": "choices",
                        "origin": "manual"
                    },
                    {
                        "original_width": 1024,
                        "original_height": 755,
                        "image_rotation": 0,
                        "value": {
                            "points": [
                                [
                                    39.55431754874652,
                                    29.81132075471698
                                ],
                                [
                                    33.70473537604457,
                                    21.50943396226415
                                ],
                                [
                                    44.56824512534819,
                                    20.37735849056604
                                ]
                            ],
                            "polygonlabels": [
                                "多边形多选择"
                            ]
                        },
                        "id": "1brP6dD4E3",
                        "from_name": ":5-_-0-labels-ts",
                        "to_name": "ts",
                        "type": "polygonlabels",
                        "origin": "manual"
                    },
                    {
                        "original_width": 1024,
                        "original_height": 755,
                        "image_rotation": 0,
                        "value": {
                            "points": [
                                [
                                    39.55431754874652,
                                    29.81132075471698
                                ],
                                [
                                    33.70473537604457,
                                    21.50943396226415
                                ],
                                [
                                    44.56824512534819,
                                    20.37735849056604
                                ]
                            ],
                            "choices": [
                                "单选一"
                            ]
                        },
                        "id": "1brP6dD4E3",
                        "from_name": ":5-1-1-属性一-label-0-0",
                        "to_name": "ts",
                        "type": "choices",
                        "origin": "manual"
                    },
                    {
                        "original_width": 1024,
                        "original_height": 755,
                        "image_rotation": 0,
                        "value": {
                            "points": [
                                [
                                    39.55431754874652,
                                    29.81132075471698
                                ],
                                [
                                    33.70473537604457,
                                    21.50943396226415
                                ],
                                [
                                    44.56824512534819,
                                    20.37735849056604
                                ]
                            ],
                            "choices": [
                                "多选258"
                            ]
                        },
                        "id": "1brP6dD4E3",
                        "from_name": ":5-2-1-多选一-label-0-1",
                        "to_name": "ts",
                        "type": "choices",
                        "origin": "manual"
                    },
                    {
                        "original_width": 1024,
                        "original_height": 755,
                        "image_rotation": 0,
                        "value": {
                            "points": [
                                [
                                    39.55431754874652,
                                    29.81132075471698
                                ],
                                [
                                    33.70473537604457,
                                    21.50943396226415
                                ],
                                [
                                    44.56824512534819,
                                    20.37735849056604
                                ]
                            ],
                            "text": [
                                "钢丝软管是"
                            ]
                        },
                        "id": "1brP6dD4E3",
                        "from_name": ":5-3-1-0-文本属性-label-0-2",
                        "to_name": "ts",
                        "type": "textarea",
                        "origin": "manual"
                    },
                    {
                        "original_width": 1024,
                        "original_height": 755,
                        "image_rotation": 0,
                        "value": {
                            "x": 52.92479108635097,
                            "y": 20,
                            "width": 25.069637883008358,
                            "height": 36.9811320754717,
                            "rotation": 0,
                            "rectanglelabels": [
                                "矩形多属性"
                            ]
                        },
                        "id": "jweAuRxAjD",
                        "from_name": ":4-_-0-labels-ts",
                        "to_name": "ts",
                        "type": "rectanglelabels",
                        "origin": "manual"
                    },
                    {
                        "original_width": 1024,
                        "original_height": 755,
                        "image_rotation": 0,
                        "value": {
                            "x": 52.92479108635097,
                            "y": 20,
                            "width": 25.069637883008358,
                            "height": 36.9811320754717,
                            "rotation": 0,
                            "choices": [
                                "单选题"
                            ]
                        },
                        "id": "jweAuRxAjD",
                        "from_name": ":4-1-1-矩形多属性-label-0-0",
                        "to_name": "ts",
                        "type": "choices",
                        "origin": "manual"
                    },
                    {
                        "original_width": 1024,
                        "original_height": 755,
                        "image_rotation": 0,
                        "value": {
                            "x": 52.92479108635097,
                            "y": 20,
                            "width": 25.069637883008358,
                            "height": 36.9811320754717,
                            "rotation": 0,
                            "choices": [
                                "多选二"
                            ]
                        },
                        "id": "jweAuRxAjD",
                        "from_name": ":4-2-1-多选属性28-label-0-1",
                        "to_name": "ts",
                        "type": "choices",
                        "origin": "manual"
                    },
                    {
                        "original_width": 1024,
                        "original_height": 755,
                        "image_rotation": 0,
                        "value": {
                            "x": 30.362116991643454,
                            "y": 48.30188679245284,
                            "width": 1.1173097663736313,
                            "keypointlabels": [
                                "点集属性125"
                            ]
                        },
                        "id": "3vQJTYrGEJ",
                        "from_name": ":2-_-0-labels-ts",
                        "to_name": "ts",
                        "type": "keypointlabels",
                        "origin": "manual"
                    },
                    {
                        "original_width": 1024,
                        "original_height": 755,
                        "image_rotation": 0,
                        "value": {
                            "x": 30.362116991643454,
                            "y": 48.30188679245284,
                            "width": 1.1173097663736313,
                            "text": [
                                "反而"
                            ]
                        },
                        "id": "3vQJTYrGEJ",
                        "from_name": ":2-3-1-0-属性多选一-label-0-0",
                        "to_name": "ts",
                        "type": "textarea",
                        "origin": "manual"
                    }
                ],
                "was_cancelled": false,
                "ground_truth": false,
                "created_at": "2022-10-13T03:09:07.742542Z",
                "updated_at": "2022-10-13T03:09:07.742542Z",
                "lead_time": 1.752,
                "prediction": {},
                "result_count": 0,
                "task": 127558,
                "parent_prediction": null,
                "parent_annotation": null
            }
        ],
        "file_upload": "75e3bf5b-1_Handshaking_Handshaking_1_54.jpg",
        "drafts": [],
        "predictions": [],
        "data": {
            "image": "\/data\/upload\/13\/75e3bf5b-1_Handshaking_Handshaking_1_54.jpg"
        },
        "meta": {},
        "created_at": "2022-10-13T02:34:21.572359Z",
        "updated_at": "2022-10-13T03:09:07.803339Z",
        "inner_id": 2,
        "total_annotations": 1,
        "cancelled_annotations": 0,
        "total_predictions": 0,
        "project": 13,
        "updated_by": 1
    },
    {
        "id": 127557,
        "annotations": [
            {
                "id": 14,
                "completed_by": 1,
                "result": [
                    {
                        "original_width": 1024,
                        "original_height": 754,
                        "image_rotation": 0,
                        "value": {
                            "x": 20.27777777777778,
                            "y": 22.641509433962263,
                            "width": 1.1111111111111112,
                            "keypointlabels": [
                                "点集属性125"
                            ]
                        },
                        "id": "u7TQT0pPzn",
                        "from_name": ":2-_-0-labels-ts",
                        "to_name": "ts",
                        "type": "keypointlabels",
                        "origin": "manual"
                    },
                    {
                        "original_width": 1024,
                        "original_height": 754,
                        "image_rotation": 0,
                        "value": {
                            "x": 20.27777777777778,
                            "y": 22.641509433962263,
                            "width": 1.1111111111111112,
                            "text": [
                                "大"
                            ]
                        },
                        "id": "u7TQT0pPzn",
                        "from_name": ":2-3-1-0-属性多选一-label-0-0",
                        "to_name": "ts",
                        "type": "textarea",
                        "origin": "manual"
                    },
                    {
                        "original_width": 1024,
                        "original_height": 754,
                        "image_rotation": 0,
                        "value": {
                            "x": 25.27777777777778,
                            "y": 30.566037735849058,
                            "width": 1.1111111111111112,
                            "keypointlabels": [
                                "点集属性125"
                            ]
                        },
                        "id": "mka9hxx5M2",
                        "from_name": ":2-_-0-labels-ts",
                        "to_name": "ts",
                        "type": "keypointlabels",
                        "origin": "manual"
                    },
                    {
                        "original_width": 1024,
                        "original_height": 754,
                        "image_rotation": 0,
                        "value": {
                            "x": 25.27777777777778,
                            "y": 30.566037735849058,
                            "width": 1.1111111111111112,
                            "text": [
                                "打分"
                            ]
                        },
                        "id": "mka9hxx5M2",
                        "from_name": ":2-3-1-0-属性多选一-label-0-0",
                        "to_name": "ts",
                        "type": "textarea",
                        "origin": "manual"
                    },
                    {
                        "original_width": 1024,
                        "original_height": 754,
                        "image_rotation": 0,
                        "value": {
                            "x": 29.444444444444443,
                            "y": 39.24528301886792,
                            "width": 1.1111111111111112,
                            "keypointlabels": [
                                "点集属性125"
                            ]
                        },
                        "id": "d9ZtT-OzWq",
                        "from_name": ":2-_-0-labels-ts",
                        "to_name": "ts",
                        "type": "keypointlabels",
                        "origin": "manual"
                    },
                    {
                        "original_width": 1024,
                        "original_height": 754,
                        "image_rotation": 0,
                        "value": {
                            "x": 29.444444444444443,
                            "y": 39.24528301886792,
                            "width": 1.1111111111111112,
                            "text": [
                                "发发发"
                            ]
                        },
                        "id": "d9ZtT-OzWq",
                        "from_name": ":2-3-1-0-属性多选一-label-0-0",
                        "to_name": "ts",
                        "type": "textarea",
                        "origin": "manual"
                    },
                    {
                        "original_width": 1024,
                        "original_height": 754,
                        "image_rotation": 0,
                        "value": {
                            "x": 55.00000000000001,
                            "y": 5.283018867924529,
                            "width": 25,
                            "height": 31.69811320754717,
                            "rotation": 0,
                            "rectanglelabels": [
                                "矩形多属性"
                            ]
                        },
                        "id": "2gwRfS9l3f",
                        "from_name": ":4-_-0-labels-ts",
                        "to_name": "ts",
                        "type": "rectanglelabels",
                        "origin": "manual"
                    },
                    {
                        "original_width": 1024,
                        "original_height": 754,
                        "image_rotation": 0,
                        "value": {
                            "x": 55.00000000000001,
                            "y": 5.283018867924529,
                            "width": 25,
                            "height": 31.69811320754717,
                            "rotation": 0,
                            "choices": [
                                "单选题"
                            ]
                        },
                        "id": "2gwRfS9l3f",
                        "from_name": ":4-1-1-矩形多属性-label-0-0",
                        "to_name": "ts",
                        "type": "choices",
                        "origin": "manual"
                    },
                    {
                        "original_width": 1024,
                        "original_height": 754,
                        "image_rotation": 0,
                        "value": {
                            "x": 55.00000000000001,
                            "y": 5.283018867924529,
                            "width": 25,
                            "height": 31.69811320754717,
                            "rotation": 0,
                            "choices": [
                                "多选二"
                            ]
                        },
                        "id": "2gwRfS9l3f",
                        "from_name": ":4-2-1-多选属性28-label-0-1",
                        "to_name": "ts",
                        "type": "choices",
                        "origin": "manual"
                    },
                    {
                        "value": {
                            "choices": [
                                "全图标签1"
                            ]
                        },
                        "id": "acuFvEkxnd",
                        "from_name": "choice",
                        "to_name": "ts",
                        "type": "choices",
                        "origin": "manual"
                    },
                    {
                        "original_width": 1024,
                        "original_height": 754,
                        "image_rotation": 0,
                        "value": {
                            "points": [
                                [
                                    45.833333333333336,
                                    41.88679245283019
                                ],
                                [
                                    59.166666666666664,
                                    55.094339622641506
                                ],
                                [
                                    37.77777777777778,
                                    70.56603773584904
                                ],
                                [
                                    34.72222222222222,
                                    59.24528301886791
                                ]
                            ],
                            "polygonlabels": [
                                "多边形多选择"
                            ]
                        },
                        "id": "cek7Qj0Pu5",
                        "from_name": ":5-_-0-labels-ts",
                        "to_name": "ts",
                        "type": "polygonlabels",
                        "origin": "manual"
                    },
                    {
                        "original_width": 1024,
                        "original_height": 754,
                        "image_rotation": 0,
                        "value": {
                            "points": [
                                [
                                    45.833333333333336,
                                    41.88679245283019
                                ],
                                [
                                    59.166666666666664,
                                    55.094339622641506
                                ],
                                [
                                    37.77777777777778,
                                    70.56603773584904
                                ],
                                [
                                    34.72222222222222,
                                    59.24528301886791
                                ]
                            ],
                            "choices": [
                                "单选一"
                            ]
                        },
                        "id": "cek7Qj0Pu5",
                        "from_name": ":5-1-1-属性一-label-0-0",
                        "to_name": "ts",
                        "type": "choices",
                        "origin": "manual"
                    },
                    {
                        "original_width": 1024,
                        "original_height": 754,
                        "image_rotation": 0,
                        "value": {
                            "points": [
                                [
                                    45.833333333333336,
                                    41.88679245283019
                                ],
                                [
                                    59.166666666666664,
                                    55.094339622641506
                                ],
                                [
                                    37.77777777777778,
                                    70.56603773584904
                                ],
                                [
                                    34.72222222222222,
                                    59.24528301886791
                                ]
                            ],
                            "choices": [
                                "多选258"
                            ]
                        },
                        "id": "cek7Qj0Pu5",
                        "from_name": ":5-2-1-多选一-label-0-1",
                        "to_name": "ts",
                        "type": "choices",
                        "origin": "manual"
                    },
                    {
                        "original_width": 1024,
                        "original_height": 754,
                        "image_rotation": 0,
                        "value": {
                            "points": [
                                [
                                    45.833333333333336,
                                    41.88679245283019
                                ],
                                [
                                    59.166666666666664,
                                    55.094339622641506
                                ],
                                [
                                    37.77777777777778,
                                    70.56603773584904
                                ],
                                [
                                    34.72222222222222,
                                    59.24528301886791
                                ]
                            ],
                            "text": [
                                "大"
                            ]
                        },
                        "id": "cek7Qj0Pu5",
                        "from_name": ":5-3-1-0-文本属性-label-0-2",
                        "to_name": "ts",
                        "type": "textarea",
                        "origin": "manual"
                    }
                ],
                "was_cancelled": false,
                "ground_truth": false,
                "created_at": "2022-10-13T03:09:02.438754Z",
                "updated_at": "2022-10-13T03:09:05.140015Z",
                "lead_time": 3.2569999999999997,
                "prediction": {},
                "result_count": 0,
                "task": 127557,
                "parent_prediction": null,
                "parent_annotation": null
            }
        ],
        "file_upload": "e51153b4-1_Handshaking_Handshaking_1_51.jpg",
        "drafts": [],
        "predictions": [],
        "data": {
            "image": "\/data\/upload\/13\/e51153b4-1_Handshaking_Handshaking_1_51.jpg"
        },
        "meta": {},
        "created_at": "2022-10-13T02:34:21.571362Z",
        "updated_at": "2022-10-13T03:09:05.160949Z",
        "inner_id": 1,
        "total_annotations": 1,
        "cancelled_annotations": 0,
        "total_predictions": 0,
        "project": 13,
        "updated_by": 1
    }
]
```

转换COCO命令
```bash
docker run -v /data:/data label-studio-converter python cli.py --input /data/input/ --config /data/input/config.xml --output /data/output/ --format COCO --image-dir /data/output/images
```
