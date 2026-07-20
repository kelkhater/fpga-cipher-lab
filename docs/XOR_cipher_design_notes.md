# XOR Cipher Design Notes 
## Purpose 
This module is the first cipher building block in the project. It is used to practise parameterised combinational RTL design and self-checking testbench development before moving on to more complex cipher structures. --- ## What is the XOR Cipher? A simple symmetric encyption algorithm where plaintext is combined with a shared key using bitewise XOR to encrypt plaintext into ciphertext. Decryption is completed using a bitwise XOR operation on the key and the ciphertext. This algorithm exploites the self inversing property of the XOR gate. ### Encryption
text
ciphertext = plaintext XOR key
### Decryption
text
plaintext = ciphertext XOR key
--- ## Proof of Reversability via Boolean Algebra **Notation** - C = Ciphertext - K = Key - P = Plaintext ### Encryption
text
C = P XOR K
### Apply Key to Ciphertext
text
P = (P XOR K) XOR K
### Simplify
text
P = P XOR (K XOR K)

K XOR K = 0

P = P XOR 0

P = P
## Algorithm 
1. Recieve plaintext input
2. 2. Recieve encryption key
3.  Perform bitwise XOR on key and plaintext
4. 4. Produce ciphertext at output
5. 5. On the decrypting side recieve ciphertext and key
 6. 6. Perform bitwise XOR on the ciphertext and key ## Module Specification
### Module Name
```text
xor_cipher
```
### Description 
parameterised combinational hardware block that fully executes XOR encryption or decryption 
### Parameters 
|parameter|Description|default|
|---------|-----------|-------| 
|WIDTH| width of the data_in and key buses|8| 
### Inputs |Signal|width|description| 
|---------|-----------|-------| 
|data_in|WIDTH|plaintext or ciphertext input| 
|key|WIDTH|The common key|
### Outputs 
|Signal|Width|Description|
|---------|-----------|-------|
|data_out| WIDTH|Result of the XOR operation|
