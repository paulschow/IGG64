{
  "version": "1.2",
  "package": {
    "name": "",
    "version": "",
    "description": "",
    "author": "",
    "image": ""
  },
  "design": {
    "board": "iCEBreaker",
    "graph": {
      "blocks": [
        {
          "id": "19694a0b-c326-4367-8d9a-28dd3f24d42d",
          "type": "basic.output",
          "data": {
            "name": "value",
            "range": "[3:0]",
            "pins": [
              {
                "index": "3",
                "name": "P1_A4",
                "value": "45"
              },
              {
                "index": "2",
                "name": "P1_A3",
                "value": "47"
              },
              {
                "index": "1",
                "name": "P1_A2",
                "value": "2"
              },
              {
                "index": "0",
                "name": "P1_A1",
                "value": "4"
              }
            ],
            "virtual": false
          },
          "position": {
            "x": 760,
            "y": 224
          }
        },
        {
          "id": "96772cb5-4678-4ef7-87cd-4aee797daef7",
          "type": "adcbe749ef0e25c7aa10144949fb0d25da2263a7",
          "position": {
            "x": 80,
            "y": 216
          },
          "size": {
            "width": 96,
            "height": 64
          }
        },
        {
          "id": "2253af76-77ae-421c-81f6-7bd32d374aaf",
          "type": "basic.code",
          "data": {
            "code": "reg [3:0] value = 4'b0001;\r\n\r\ninteger i;\r\n\r\nalways @(posedge clk)\r\n    for (i = 0; i < 4; i = i+1)\r\n    value <= value << 1;",
            "params": [],
            "ports": {
              "in": [
                {
                  "name": "clk"
                }
              ],
              "out": [
                {
                  "name": "value",
                  "range": "[3:0]",
                  "size": 4
                }
              ]
            }
          },
          "position": {
            "x": 264,
            "y": 192
          },
          "size": {
            "width": 376,
            "height": 208
          }
        }
      ],
      "wires": [
        {
          "source": {
            "block": "96772cb5-4678-4ef7-87cd-4aee797daef7",
            "port": "7e07d449-6475-4839-b43e-8aead8be2aac"
          },
          "target": {
            "block": "2253af76-77ae-421c-81f6-7bd32d374aaf",
            "port": "clk"
          }
        },
        {
          "source": {
            "block": "2253af76-77ae-421c-81f6-7bd32d374aaf",
            "port": "value"
          },
          "target": {
            "block": "19694a0b-c326-4367-8d9a-28dd3f24d42d",
            "port": "in"
          },
          "size": 4
        }
      ]
    }
  },
  "dependencies": {
    "adcbe749ef0e25c7aa10144949fb0d25da2263a7": {
      "package": {
        "name": "Prescaler22",
        "version": "0.1",
        "description": "22-bits prescaler",
        "author": "Juan Gonzalez (Obijuan)",
        "image": ""
      },
      "design": {
        "graph": {
          "blocks": [
            {
              "id": "001a65af-f50d-4dbf-be8a-e0a3bb11df68",
              "type": "basic.constant",
              "data": {
                "name": "N",
                "value": "22",
                "local": true
              },
              "position": {
                "x": 288,
                "y": 48
              }
            },
            {
              "id": "e19c6f2f-5747-4ed1-87c8-748575f0cc10",
              "type": "basic.input",
              "data": {
                "name": "",
                "clock": true
              },
              "position": {
                "x": 96,
                "y": 160
              }
            },
            {
              "id": "98bd9928-772f-4216-99c6-325632479ab9",
              "type": "435b29b7b65c2c6d3c3df9bacef7e063156a0f7f",
              "position": {
                "x": 288,
                "y": 160
              },
              "size": {
                "width": 96,
                "height": 64
              }
            },
            {
              "id": "7e07d449-6475-4839-b43e-8aead8be2aac",
              "type": "basic.output",
              "data": {
                "name": ""
              },
              "position": {
                "x": 448,
                "y": 160
              }
            }
          ],
          "wires": [
            {
              "source": {
                "block": "e19c6f2f-5747-4ed1-87c8-748575f0cc10",
                "port": "out"
              },
              "target": {
                "block": "98bd9928-772f-4216-99c6-325632479ab9",
                "port": "e19c6f2f-5747-4ed1-87c8-748575f0cc10"
              }
            },
            {
              "source": {
                "block": "001a65af-f50d-4dbf-be8a-e0a3bb11df68",
                "port": "constant-out"
              },
              "target": {
                "block": "98bd9928-772f-4216-99c6-325632479ab9",
                "port": "de2d8a2d-7908-48a2-9e35-7763a45886e4"
              }
            },
            {
              "source": {
                "block": "98bd9928-772f-4216-99c6-325632479ab9",
                "port": "7e07d449-6475-4839-b43e-8aead8be2aac"
              },
              "target": {
                "block": "7e07d449-6475-4839-b43e-8aead8be2aac",
                "port": "in"
              }
            }
          ]
        }
      }
    },
    "435b29b7b65c2c6d3c3df9bacef7e063156a0f7f": {
      "package": {
        "name": "PrescalerN",
        "version": "0.1",
        "description": "Parametric N-bits prescaler",
        "author": "Juan Gonzalez (Obijuan)",
        "image": ""
      },
      "design": {
        "graph": {
          "blocks": [
            {
              "id": "de2d8a2d-7908-48a2-9e35-7763a45886e4",
              "type": "basic.constant",
              "data": {
                "name": "N",
                "value": "22",
                "local": false
              },
              "position": {
                "x": 352,
                "y": 56
              }
            },
            {
              "id": "2330955f-5ce6-4d1c-8ee4-0a09a0349389",
              "type": "basic.code",
              "data": {
                "code": "//-- Number of bits of the prescaler\n//parameter N = 22;\n\n//-- divisor register\nreg [N-1:0] divcounter;\n\n//-- N bit counter\nalways @(posedge clk_in)\n  divcounter <= divcounter + 1;\n\n//-- Use the most significant bit as output\nassign clk_out = divcounter[N-1];",
                "params": [
                  {
                    "name": "N"
                  }
                ],
                "ports": {
                  "in": [
                    {
                      "name": "clk_in"
                    }
                  ],
                  "out": [
                    {
                      "name": "clk_out"
                    }
                  ]
                }
              },
              "position": {
                "x": 176,
                "y": 176
              },
              "size": {
                "width": 448,
                "height": 224
              }
            },
            {
              "id": "e19c6f2f-5747-4ed1-87c8-748575f0cc10",
              "type": "basic.input",
              "data": {
                "name": "",
                "clock": true
              },
              "position": {
                "x": 0,
                "y": 256
              }
            },
            {
              "id": "7e07d449-6475-4839-b43e-8aead8be2aac",
              "type": "basic.output",
              "data": {
                "name": ""
              },
              "position": {
                "x": 720,
                "y": 256
              }
            }
          ],
          "wires": [
            {
              "source": {
                "block": "2330955f-5ce6-4d1c-8ee4-0a09a0349389",
                "port": "clk_out"
              },
              "target": {
                "block": "7e07d449-6475-4839-b43e-8aead8be2aac",
                "port": "in"
              }
            },
            {
              "source": {
                "block": "e19c6f2f-5747-4ed1-87c8-748575f0cc10",
                "port": "out"
              },
              "target": {
                "block": "2330955f-5ce6-4d1c-8ee4-0a09a0349389",
                "port": "clk_in"
              }
            },
            {
              "source": {
                "block": "de2d8a2d-7908-48a2-9e35-7763a45886e4",
                "port": "constant-out"
              },
              "target": {
                "block": "2330955f-5ce6-4d1c-8ee4-0a09a0349389",
                "port": "N"
              }
            }
          ]
        }
      }
    }
  }
}