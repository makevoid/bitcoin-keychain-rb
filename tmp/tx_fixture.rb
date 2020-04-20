TX_FIXTURE = JSON.parse('{
  "address": "1FhYxR9wCwdBKTuMUaYsbZxr8fiJDYYEQ8",
  "total_received": 3000,
  "total_sent": 0,
  "balance": 3000,
  "unconfirmed_balance": 0,
  "final_balance": 3000,
  "n_tx": 1,
  "unconfirmed_n_tx": 0,
  "final_n_tx": 1,
  "txs": [
    {
      "block_hash": "00000000000000000006e7a771a935532a0af2d41c0b1f64ab09594d5dfcdec1",
      "block_height": 607264,
      "block_index": 3153,
      "hash": "11e0a8a0ced85b8fd854527d8eb0e675bbba411ea5e04df75331908f9c4363a2",
      "hex": "01000000000101f36fca1a7f4c7df99fbc790b769beada4a925ae76b2d1ba985f213ce302f67e10400000017160014935aa8ff0430294e08bc76c500f86e1cf97c3637ffffffff0252550700000000001976a9149ba18aea7b0fb7d1a24c38450c037764e2608f6f88acb80b0000000000001976a914a13d13137792add2a4fe492fb13c3cd6908fc2a388ac02483045022100a923a6a6ee7395810f95471fcf1502efea3092fafedbc3c2a8c1aa22ff4ffa0602206bf828a0ef72e31f90bba8563c0d87e4c6c9df40c80a287ed9e1cb5506a04c850121031c83538e60fd2255308ae624cbe04e49a9baa804d1e1cde44f60eadf855d852b00000000",
      "addresses": [
        "1FhYxR9wCwdBKTuMUaYsbZxr8fiJDYYEQ8",
        "1FhYxR9wCwdBKTuMUaYsbZxr8fiJDYYEQ8",
        "38zcLK9Z2udVMYFZfLSMsaTAHXk6yc7sdT"
      ],
      "total": 483594,
      "fees": 695,
      "size": 142,
      "preference": "low",
      "relayed_by": "85.2.172.57:8333",
      "confirmed": "2019-12-08T20:39:55Z",
      "received": "2019-12-08T20:09:19.742Z",
      "ver": 1,
      "double_spend": false,
      "vin_sz": 1,
      "vout_sz": 2,
      "confirmations": 110,
      "confidence": 1,
      "inputs": [
        {
          "prev_hash": "e1672f30ce13f285a91b2d6be75a924adaea9b760b79bc9ff97d4c7f1aca6ff3",
          "output_index": 4,
          "script": "160014935aa8ff0430294e08bc76c500f86e1cf97c3637",
          "output_value": 484289,
          "sequence": 4294967295,
          "addresses": [
            "38zcLK9Z2udVMYFZfLSMsaTAHXk6yc7sdT"
          ],
          "script_type": "pay-to-script-hash",
          "age": 607262
        }
      ],
      "outputs": [
        {
          "value": 480594,
          "script": "76a9149ba18aea7b0fb7d1a24c38450c037764e2608f6f88ac",
          "addresses": [
            "1FhYxR9wCwdBKTuMUaYsbZxr8fiJDYYEQ8"
          ],
          "script_type": "pay-to-pubkey-hash"
        },
        {
          "value": 3000,
          "script": "76a914a13d13137792add2a4fe492fb13c3cd6908fc2a388ac",
          "addresses": [
            "1FhYxR9wCwdBKTuMUaYsbZxr8fiJDYYEQ8"
          ],
          "script_type": "pay-to-pubkey-hash"
        }
      ]
    }
  ]
}')
