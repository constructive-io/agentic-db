-- Deploy: migrate/check_constraint
-- made with <3 @ constructive.io

-- requires: migrate/unique_constraint


SET session_replication_role TO replica;
-- using replica in case we are deploying triggers to metaschema_public

-- unaccent, postgis affected and require grants
GRANT EXECUTE ON ALL FUNCTIONS IN SCHEMA public to public;

DO $LQLMIGRATION$
  DECLARE
  BEGIN

    EXECUTE format('GRANT CONNECT ON DATABASE %I TO %I', current_database(), 'app_user');
    EXECUTE format('GRANT CONNECT ON DATABASE %I TO %I', current_database(), 'app_admin');

  END;
$LQLMIGRATION$;

INSERT INTO metaschema_public.check_constraint (
  id,
  database_id,
  table_id,
  name,
  type,
  field_ids,
  expr
) VALUES
  ('019d11d9-5ba5-7952-885b-ded7cd9556e0', '019d11d9-57e6-748d-91f1-8d571d4d7f22', '019d11d9-5aed-7673-b41b-b11528f73f79', 'users_username_chk', 'c', '{019d11d9-5b90-709b-90d5-c8bf34ae2e29}', '{"A_Expr":{"kind":"AEXPR_OP","name":[{"String":{"sval":"<="}}],"lexpr":{"FuncCall":{"args":[{"ColumnRef":{"fields":[{"String":{"sval":"username"}}]}}],"funcname":[{"String":{"sval":"character_length"}}]}},"rexpr":{"A_Const":{"ival":256}}}}'),
  ('019d11d9-5be8-7c05-8519-f09daf65474d', '019d11d9-57e6-748d-91f1-8d571d4d7f22', '019d11d9-5aed-7673-b41b-b11528f73f79', 'users_display_name_chk', 'c', '{019d11d9-5bd7-7eba-b7cb-1faa79976393}', '{"A_Expr":{"kind":"AEXPR_OP","name":[{"String":{"sval":"<="}}],"lexpr":{"FuncCall":{"args":[{"ColumnRef":{"fields":[{"String":{"sval":"display_name"}}]}}],"funcname":[{"String":{"sval":"character_length"}}]}},"rexpr":{"A_Const":{"ival":256}}}}'),
  ('019d11d9-623b-797e-a9c9-bd481010c5d4', '019d11d9-57e6-748d-91f1-8d571d4d7f22', '019d11d9-6176-7383-97c7-be4ad83ecdd6', 'app_permissions_bitnum_chk', 'c', '{019d11d9-622a-7458-86ad-af1d31af6374}', '{"BoolExpr":{"args":[{"A_Expr":{"kind":"AEXPR_OP","name":[{"String":{"sval":">="}}],"lexpr":{"ColumnRef":{"fields":[{"String":{"sval":"bitnum"}}]}},"rexpr":{"A_Const":{"ival":1}}}},{"A_Expr":{"kind":"AEXPR_OP","name":[{"String":{"sval":"<="}}],"lexpr":{"ColumnRef":{"fields":[{"String":{"sval":"bitnum"}}]}},"rexpr":{"A_Const":{"ival":24}}}}],"boolop":"AND_EXPR"}}'),
  ('019d11d9-9a81-7ad2-8c76-87c51305f800', '019d11d9-57e6-748d-91f1-8d571d4d7f22', '019d11d9-9991-76e8-8d2b-2c7a59853f40', 'org_permissions_bitnum_chk', 'c', '{019d11d9-9a6c-75de-b896-bb5a2381b69f}', '{"BoolExpr":{"args":[{"A_Expr":{"kind":"AEXPR_OP","name":[{"String":{"sval":">="}}],"lexpr":{"ColumnRef":{"fields":[{"String":{"sval":"bitnum"}}]}},"rexpr":{"A_Const":{"ival":1}}}},{"A_Expr":{"kind":"AEXPR_OP","name":[{"String":{"sval":"<="}}],"lexpr":{"ColumnRef":{"fields":[{"String":{"sval":"bitnum"}}]}},"rexpr":{"A_Const":{"ival":24}}}}],"boolop":"AND_EXPR"}}'),
  ('019d11d9-e41a-7690-83c7-1f7dd3983dc5', '019d11d9-57e6-748d-91f1-8d571d4d7f22', '019d11d9-e145-74f3-9183-4eca0131036e', 'org_chart_edges_child_id_parent_id_chk', 'c', '{019d11d9-e2cb-779b-b7b9-9e85fd19c612,019d11d9-e327-7f05-a5ca-6a992ae6fbbe}', '{"A_Expr":{"kind":"AEXPR_OP","name":[{"String":{"sval":"<>"}}],"lexpr":{"ColumnRef":{"fields":[{"String":{"sval":"child_id"}}]}},"rexpr":{"ColumnRef":{"fields":[{"String":{"sval":"parent_id"}}]}}}}'),
  ('019d11da-1125-79b4-b29f-b732c8d5e2d6', '019d11d9-57e6-748d-91f1-8d571d4d7f22', '019d11da-0fe1-7261-af0b-290b5ff6d4f3', 'crypto_addresses_address_chk', 'c', '{019d11da-10f5-713a-a978-95107a31aff4}', '{"A_Expr":{"kind":"AEXPR_OP","name":[{"String":{"sval":"~*"}}],"lexpr":{"ColumnRef":{"fields":[{"String":{"sval":"address"}}]}},"rexpr":{"A_Const":{"sval":"^(bc1|[13])[a-zA-HJ-NP-Z0-9]{25,39}$"}}}}');


SET session_replication_role TO DEFAULT;


