--------------------------------------------------------------------------------
-- Up
--------------------------------------------------------------------------------

INSERT INTO Users(username, hashedPassword, salt, profile, bitbars)
  VALUES
    ('user1', '8146ff33e815e1a08eae2b473bf2cca159582e434c52524c3325f06e8c2b80d9', '1337', '', 200), -- password = one
    ('user2', 'b4c9d3824bbaed01ac6cc9895b09c77f9864ee016d348fe4d8fb5357d5b32311', '1337', '', 200), -- password = two
    ('user3', '0ae8427fe34d27ee6f678e79897808020e20d736ec6abdfff9dece676153e4ce', '217703101022879492631352681842557793628', '', 500), -- password = three
    ('attacker', '0fc921dccfcb071132e72385f10d91dcb213983792dfe93de8b5d3274b5a5cf5', '21834708492970860368940710131560218741', '', 0), -- password = evil
    ('userx', 'b0921b5ce72ec2ae486a113598c541cf84cef2adfabee27f8a373f96231df595', '9048fd13ae516c53508e3cb7522b41cd1bf29a6304262bc7924dcddedddb55aa', '', 500); --you need to find this one :)

--------------------------------------------------------------------------------
-- Down
--------------------------------------------------------------------------------

DELETE FROM Users;
