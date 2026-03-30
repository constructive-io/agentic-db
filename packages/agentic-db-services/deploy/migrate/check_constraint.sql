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
  ('019d3d14-e7da-7439-b5e3-47c58da7ab09', '019d3d14-e4d9-7da9-8899-3e3a337a3080', '019d3d14-e756-7f18-bcd9-be9300e74947', 'users_username_chk', 'c', '{019d3d14-e7c7-7a03-b452-1b5df8dcecac}', '{"A_Expr":{"kind":"AEXPR_OP","name":[{"String":{"sval":"<="}}],"lexpr":{"FuncCall":{"args":[{"ColumnRef":{"fields":[{"String":{"sval":"username"}}]}}],"funcname":[{"String":{"sval":"character_length"}}]}},"rexpr":{"A_Const":{"ival":256}}}}'),
  ('019d3d14-e80f-7c76-824a-a0fdc9d5bc1f', '019d3d14-e4d9-7da9-8899-3e3a337a3080', '019d3d14-e756-7f18-bcd9-be9300e74947', 'users_display_name_chk', 'c', '{019d3d14-e801-7bdc-9e6f-69c6eff9f2a2}', '{"A_Expr":{"kind":"AEXPR_OP","name":[{"String":{"sval":"<="}}],"lexpr":{"FuncCall":{"args":[{"ColumnRef":{"fields":[{"String":{"sval":"display_name"}}]}}],"funcname":[{"String":{"sval":"character_length"}}]}},"rexpr":{"A_Const":{"ival":256}}}}'),
  ('019d3d14-ed6e-7ddd-b2aa-343124840168', '019d3d14-e4d9-7da9-8899-3e3a337a3080', '019d3d14-ecb8-72e1-b8b6-00f4f113f945', 'app_permissions_bitnum_chk', 'c', '{019d3d14-ed5e-7fce-aee3-695cee100cb7}', '{"BoolExpr":{"args":[{"A_Expr":{"kind":"AEXPR_OP","name":[{"String":{"sval":">="}}],"lexpr":{"ColumnRef":{"fields":[{"String":{"sval":"bitnum"}}]}},"rexpr":{"A_Const":{"ival":1}}}},{"A_Expr":{"kind":"AEXPR_OP","name":[{"String":{"sval":"<="}}],"lexpr":{"ColumnRef":{"fields":[{"String":{"sval":"bitnum"}}]}},"rexpr":{"A_Const":{"ival":24}}}}],"boolop":"AND_EXPR"}}'),
  ('019d3d15-1c9a-7dae-9363-01b9af12ec2b', '019d3d14-e4d9-7da9-8899-3e3a337a3080', '019d3d15-1bd4-7c7b-8a37-5486c1c9b8cd', 'org_permissions_bitnum_chk', 'c', '{019d3d15-1c86-70b2-9293-7d330ee6c93f}', '{"BoolExpr":{"args":[{"A_Expr":{"kind":"AEXPR_OP","name":[{"String":{"sval":">="}}],"lexpr":{"ColumnRef":{"fields":[{"String":{"sval":"bitnum"}}]}},"rexpr":{"A_Const":{"ival":1}}}},{"A_Expr":{"kind":"AEXPR_OP","name":[{"String":{"sval":"<="}}],"lexpr":{"ColumnRef":{"fields":[{"String":{"sval":"bitnum"}}]}},"rexpr":{"A_Const":{"ival":24}}}}],"boolop":"AND_EXPR"}}'),
  ('019d3d15-562a-7a15-b4f1-09d4f7b78f0f', '019d3d14-e4d9-7da9-8899-3e3a337a3080', '019d3d15-5398-7503-b27c-dabeaf0ec5cc', 'org_chart_edges_child_id_parent_id_chk', 'c', '{019d3d15-54f5-78ee-a74d-ad283944d6f9,019d3d15-554a-7e34-a45c-e07c63ed80a6}', '{"A_Expr":{"kind":"AEXPR_OP","name":[{"String":{"sval":"<>"}}],"lexpr":{"ColumnRef":{"fields":[{"String":{"sval":"child_id"}}]}},"rexpr":{"ColumnRef":{"fields":[{"String":{"sval":"parent_id"}}]}}}}'),
  ('019d3d15-7e24-7c18-8435-d8f23ebaf822', '019d3d14-e4d9-7da9-8899-3e3a337a3080', '019d3d15-7cec-785b-9134-ef3617094688', 'crypto_addresses_address_chk', 'c', '{019d3d15-7df2-725f-9403-e58ec5ad20d0}', '{"A_Expr":{"kind":"AEXPR_OP","name":[{"String":{"sval":"~*"}}],"lexpr":{"ColumnRef":{"fields":[{"String":{"sval":"address"}}]}},"rexpr":{"A_Const":{"sval":"^(bc1|[13])[a-zA-HJ-NP-Z0-9]{25,39}$"}}}}');


SET session_replication_role TO DEFAULT;


