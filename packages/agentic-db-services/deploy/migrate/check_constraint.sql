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
  ('019d3dab-0139-72aa-a4b8-b76286966885', '019d3daa-fe1f-718c-ac17-5692dc771810', '019d3dab-00a9-731d-b66d-d5d69c0909a6', 'users_username_chk', 'c', '{019d3dab-0127-7e6d-bed5-c3c001b35d35}', '{"A_Expr":{"kind":"AEXPR_OP","name":[{"String":{"sval":"<="}}],"lexpr":{"FuncCall":{"args":[{"ColumnRef":{"fields":[{"String":{"sval":"username"}}]}}],"funcname":[{"String":{"sval":"character_length"}}]}},"rexpr":{"A_Const":{"ival":256}}}}'),
  ('019d3dab-017b-73fd-8851-ff91037c0074', '019d3daa-fe1f-718c-ac17-5692dc771810', '019d3dab-00a9-731d-b66d-d5d69c0909a6', 'users_display_name_chk', 'c', '{019d3dab-0162-72ec-8a8f-700d2f884efd}', '{"A_Expr":{"kind":"AEXPR_OP","name":[{"String":{"sval":"<="}}],"lexpr":{"FuncCall":{"args":[{"ColumnRef":{"fields":[{"String":{"sval":"display_name"}}]}}],"funcname":[{"String":{"sval":"character_length"}}]}},"rexpr":{"A_Const":{"ival":256}}}}'),
  ('019d3dab-078f-77c8-9822-43f0c52766c0', '019d3daa-fe1f-718c-ac17-5692dc771810', '019d3dab-06c8-70c7-9344-b913b26b3813', 'app_permissions_bitnum_chk', 'c', '{019d3dab-077e-7bbf-9b92-29d164ea2213}', '{"BoolExpr":{"args":[{"A_Expr":{"kind":"AEXPR_OP","name":[{"String":{"sval":">="}}],"lexpr":{"ColumnRef":{"fields":[{"String":{"sval":"bitnum"}}]}},"rexpr":{"A_Const":{"ival":1}}}},{"A_Expr":{"kind":"AEXPR_OP","name":[{"String":{"sval":"<="}}],"lexpr":{"ColumnRef":{"fields":[{"String":{"sval":"bitnum"}}]}},"rexpr":{"A_Const":{"ival":24}}}}],"boolop":"AND_EXPR"}}'),
  ('019d3dab-3b34-7eb7-8162-520e93d6dcba', '019d3daa-fe1f-718c-ac17-5692dc771810', '019d3dab-3a54-7306-a038-93110afa9aff', 'org_permissions_bitnum_chk', 'c', '{019d3dab-3b21-7384-8bec-032facb1cc36}', '{"BoolExpr":{"args":[{"A_Expr":{"kind":"AEXPR_OP","name":[{"String":{"sval":">="}}],"lexpr":{"ColumnRef":{"fields":[{"String":{"sval":"bitnum"}}]}},"rexpr":{"A_Const":{"ival":1}}}},{"A_Expr":{"kind":"AEXPR_OP","name":[{"String":{"sval":"<="}}],"lexpr":{"ColumnRef":{"fields":[{"String":{"sval":"bitnum"}}]}},"rexpr":{"A_Const":{"ival":24}}}}],"boolop":"AND_EXPR"}}'),
  ('019d3dab-7e80-7b2f-84c8-73a65a97d21f', '019d3daa-fe1f-718c-ac17-5692dc771810', '019d3dab-7b8d-7459-8340-dcaa406e5d21', 'org_chart_edges_child_id_parent_id_chk', 'c', '{019d3dab-7d16-7308-8f74-39d63d7cfa05,019d3dab-7d72-7597-8239-9d4ec530583e}', '{"A_Expr":{"kind":"AEXPR_OP","name":[{"String":{"sval":"<>"}}],"lexpr":{"ColumnRef":{"fields":[{"String":{"sval":"child_id"}}]}},"rexpr":{"ColumnRef":{"fields":[{"String":{"sval":"parent_id"}}]}}}}'),
  ('019d3dab-a93b-7e38-bfe3-d2dbce02dadf', '019d3daa-fe1f-718c-ac17-5692dc771810', '019d3dab-a7ec-7098-bda7-915c3e2e44d3', 'crypto_addresses_address_chk', 'c', '{019d3dab-a909-745b-a7b6-f1172bd5ba28}', '{"A_Expr":{"kind":"AEXPR_OP","name":[{"String":{"sval":"~*"}}],"lexpr":{"ColumnRef":{"fields":[{"String":{"sval":"address"}}]}},"rexpr":{"A_Const":{"sval":"^(bc1|[13])[a-zA-HJ-NP-Z0-9]{25,39}$"}}}}');


SET session_replication_role TO DEFAULT;


