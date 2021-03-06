// ------------------------------------------------------------------------------------------------
// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
// ------------------------------------------------------------------------------------------------

/// <summary>
/// Provides helper functions for the Data Encryption Standard (DES)
/// </summary>
codeunit 1379 DESCryptoServiceProvider
{
    Access = Public;

    var
        DESCryptoServiceProviderImpl: Codeunit "DESCryptoServiceProvider Impl.";

    /// <summary>
    /// Encrypts text with DotNet Cryptography.DESCryptoServiceProvider
    /// </summary>
    /// <remark>
    /// For more information, visit https://docs.microsoft.com/en-us/dotnet/api/system.security.cryptography.descryptoserviceprovider.
    /// </remark>
    /// <param name="Password">Represents the password to be used to initialize a new instance of DotNet System.Security.Cryptography.Rfc2898DeriveBytes</param>
    /// <param name="Salt">Represents the salt to be used to initialize a new instance of System.Security.Cryptography.Rfc2898DeriveBytes</param>
    /// <param name="DecryptedText">Represents the text to encrypt</param>
    /// <return name="EncryptedText">Returns the encrypted text</return>
    [NonDebuggable]
    procedure EncryptText(DecryptedText: Text; Password: Text; Salt: Text) EncryptedText: Text
    begin
        EncryptedText := DESCryptoServiceProviderImpl.EncryptText(DecryptedText, Password, Salt);
    end;

    /// <summary>
    /// Decrypts text with DotNet Cryptography.DESCryptoServiceProvider
    /// </summary>
    /// <param name="Password">Represents the password to be used to initialize a new instance of DotNet System.Security.Cryptography.Rfc2898DeriveBytes</param>
    /// <param name="Salt">Represents the salt to be used to initialize a new instance of System.Security.Cryptography.Rfc2898DeriveBytes</param>
    /// <param name="EncryptedText">Represents the text to decrypt</param>
    /// <return name="DecryptedText">Returns the decrypted text</return>
    [NonDebuggable]
    procedure DecryptText(EncryptedText: Text; Password: Text; Salt: Text) DecryptedText: Text
    begin
        DecryptedText := DESCryptoServiceProviderImpl.DecryptText(EncryptedText, Password, Salt);
    end;


    /// <summary>
    /// Encrypts data in stream with DotNet Cryptography.DESCryptoServiceProvider
    /// </summary>
    /// <param name="Password">Represents the password to be used to initialize a new instance of Rfc2898DeriveBytes</param>
    /// <param name="InputInstream">Represents the input instream data to encrypt</param>
    /// <param name="OutputOutstream">Represents the output instream encrypted data</param>
    [NonDebuggable]
    procedure EncryptStream(Password: Text; InputInstream: InStream; var OutputOutstream: Outstream)
    begin
        DESCryptoServiceProviderImpl.EncryptStream(Password, InputInstream, OutputOutstream);
    end;

    /// <summary>
    /// Decrypts data in stream with DotNet Cryptography.DESCryptoServiceProvider
    /// </summary>
    /// <param name="Password">Represents the password to be used to initialize a new instance of Rfc2898DeriveBytes</param>
    /// <param name="InputInstream">Represents the input instream data to decrypt</param>
    /// <param name="OutputOutstream">Represents the output instream decrypted data</param>
    [NonDebuggable]
    procedure DecryptStream(Password: Text; InputInstream: InStream; var OutputOutstream: Outstream)
    begin
        DESCryptoServiceProviderImpl.DecryptStream(Password, InputInstream, OutputOutstream);
    end;
}