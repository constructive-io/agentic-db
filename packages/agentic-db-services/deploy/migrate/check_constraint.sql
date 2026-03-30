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
  ('019d4100-4395-7844-96c6-1b9e084707f7', '019d4100-4020-73d6-9854-f8d0aaa616d3', '019d4100-42f6-7ae2-9811-58ffe46470b0', 'users_username_chk', 'c', '{019d4100-4381-71e5-b06c-08ae2c98927c}', '{"A_Expr":{"kind":"AEXPR_OP","name":[{"String":{"sval":"<="}}],"lexpr":{"FuncCall":{"args":[{"ColumnRef":{"fields":[{"String":{"sval":"username"}}]}}],"funcname":[{"String":{"sval":"character_length"}}]}},"rexpr":{"A_Const":{"ival":256}}}}'),
  ('019d4100-43d2-7ca8-aa6c-19d6fc99ff53', '019d4100-4020-73d6-9854-f8d0aaa616d3', '019d4100-42f6-7ae2-9811-58ffe46470b0', 'users_display_name_chk', 'c', '{019d4100-43c2-7e25-a988-b8b5efb8a9f3}', '{"A_Expr":{"kind":"AEXPR_OP","name":[{"String":{"sval":"<="}}],"lexpr":{"FuncCall":{"args":[{"ColumnRef":{"fields":[{"String":{"sval":"display_name"}}]}}],"funcname":[{"String":{"sval":"character_length"}}]}},"rexpr":{"A_Const":{"ival":256}}}}'),
  ('019d4100-49fb-7ce6-b1f8-7ced1c2816ef', '019d4100-4020-73d6-9854-f8d0aaa616d3', '019d4100-492c-7bb1-b951-e489e54e0fea', 'app_permissions_bitnum_chk', 'c', '{019d4100-49ea-7b64-95bf-1a3e295aac10}', '{"BoolExpr":{"args":[{"A_Expr":{"kind":"AEXPR_OP","name":[{"String":{"sval":">="}}],"lexpr":{"ColumnRef":{"fields":[{"String":{"sval":"bitnum"}}]}},"rexpr":{"A_Const":{"ival":1}}}},{"A_Expr":{"kind":"AEXPR_OP","name":[{"String":{"sval":"<="}}],"lexpr":{"ColumnRef":{"fields":[{"String":{"sval":"bitnum"}}]}},"rexpr":{"A_Const":{"ival":24}}}}],"boolop":"AND_EXPR"}}'),
  ('019d4100-83ba-75fe-9841-01f5761460c7', '019d4100-4020-73d6-9854-f8d0aaa616d3', '019d4100-82d8-7e12-a4cc-c5e87ef9638b', 'org_permissions_bitnum_chk', 'c', '{019d4100-83a6-7869-8616-a58df1ecd253}', '{"BoolExpr":{"args":[{"A_Expr":{"kind":"AEXPR_OP","name":[{"String":{"sval":">="}}],"lexpr":{"ColumnRef":{"fields":[{"String":{"sval":"bitnum"}}]}},"rexpr":{"A_Const":{"ival":1}}}},{"A_Expr":{"kind":"AEXPR_OP","name":[{"String":{"sval":"<="}}],"lexpr":{"ColumnRef":{"fields":[{"String":{"sval":"bitnum"}}]}},"rexpr":{"A_Const":{"ival":24}}}}],"boolop":"AND_EXPR"}}'),
  ('019d4100-d0ee-7098-a521-b085acaf0f97', '019d4100-4020-73d6-9854-f8d0aaa616d3', '019d4100-cdf6-7160-aadd-4a7717b56775', 'org_chart_edges_child_id_parent_id_chk', 'c', '{019d4100-cf7d-7a29-8d66-cde3fd7c241b,019d4100-cfd9-709d-9771-68246b3ac382}', '{"A_Expr":{"kind":"AEXPR_OP","name":[{"String":{"sval":"<>"}}],"lexpr":{"ColumnRef":{"fields":[{"String":{"sval":"child_id"}}]}},"rexpr":{"ColumnRef":{"fields":[{"String":{"sval":"parent_id"}}]}}}}'),
  ('019d4101-04f0-74ca-a222-aef391e42cb6', '019d4100-4020-73d6-9854-f8d0aaa616d3', '019d4101-03a1-7ef9-8ff8-720bd71e9bd6', 'crypto_addresses_address_chk', 'c', '{019d4101-04be-7566-b9f8-ed0473db3017}', '{"A_Expr":{"kind":"AEXPR_OP","name":[{"String":{"sval":"~*"}}],"lexpr":{"ColumnRef":{"fields":[{"String":{"sval":"address"}}]}},"rexpr":{"A_Const":{"sval":"^(bc1|[13])[a-zA-HJ-NP-Z0-9]{25,39}$"}}}}');


SET session_replication_role TO DEFAULT;


