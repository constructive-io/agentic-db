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
  ('019d0ffe-5143-70f5-8786-0acf17dbf3a6', '019d0ffe-4d6d-7080-bf5e-4af8af979c90', '019d0ffe-509c-7e69-b073-260da2d7f651', 'users_username_chk', 'c', '{019d0ffe-512e-796f-a3dd-adf06e39c395}', '{"A_Expr":{"kind":"AEXPR_OP","name":[{"String":{"sval":"<="}}],"lexpr":{"FuncCall":{"args":[{"ColumnRef":{"fields":[{"String":{"sval":"username"}}]}}],"funcname":[{"String":{"sval":"character_length"}}]}},"rexpr":{"A_Const":{"ival":256}}}}'),
  ('019d0ffe-5181-7aad-88db-be115fcbff0e', '019d0ffe-4d6d-7080-bf5e-4af8af979c90', '019d0ffe-509c-7e69-b073-260da2d7f651', 'users_display_name_chk', 'c', '{019d0ffe-5170-7764-a110-3d21b5f97dc3}', '{"A_Expr":{"kind":"AEXPR_OP","name":[{"String":{"sval":"<="}}],"lexpr":{"FuncCall":{"args":[{"ColumnRef":{"fields":[{"String":{"sval":"display_name"}}]}}],"funcname":[{"String":{"sval":"character_length"}}]}},"rexpr":{"A_Const":{"ival":256}}}}'),
  ('019d0ffe-57eb-7bc9-8077-0ba1fcec6848', '019d0ffe-4d6d-7080-bf5e-4af8af979c90', '019d0ffe-5723-79af-9db0-2a952ae7b0a4', 'app_permissions_bitnum_chk', 'c', '{019d0ffe-57da-7dfe-b812-f3f5f8ce69ce}', '{"BoolExpr":{"args":[{"A_Expr":{"kind":"AEXPR_OP","name":[{"String":{"sval":">="}}],"lexpr":{"ColumnRef":{"fields":[{"String":{"sval":"bitnum"}}]}},"rexpr":{"A_Const":{"ival":1}}}},{"A_Expr":{"kind":"AEXPR_OP","name":[{"String":{"sval":"<="}}],"lexpr":{"ColumnRef":{"fields":[{"String":{"sval":"bitnum"}}]}},"rexpr":{"A_Const":{"ival":24}}}}],"boolop":"AND_EXPR"}}'),
  ('019d0ffe-8c92-7a5f-bc8b-08853585f634', '019d0ffe-4d6d-7080-bf5e-4af8af979c90', '019d0ffe-8bb5-7fcf-9caa-019e02b8af3e', 'org_permissions_bitnum_chk', 'c', '{019d0ffe-8c7f-723e-a26c-49f5e66f2326}', '{"BoolExpr":{"args":[{"A_Expr":{"kind":"AEXPR_OP","name":[{"String":{"sval":">="}}],"lexpr":{"ColumnRef":{"fields":[{"String":{"sval":"bitnum"}}]}},"rexpr":{"A_Const":{"ival":1}}}},{"A_Expr":{"kind":"AEXPR_OP","name":[{"String":{"sval":"<="}}],"lexpr":{"ColumnRef":{"fields":[{"String":{"sval":"bitnum"}}]}},"rexpr":{"A_Const":{"ival":24}}}}],"boolop":"AND_EXPR"}}'),
  ('019d0ffe-cdba-77bc-9aab-2e826c96e380', '019d0ffe-4d6d-7080-bf5e-4af8af979c90', '019d0ffe-cac1-78c8-8481-0ad71fc8f6ed', 'org_chart_edges_child_id_parent_id_chk', 'c', '{019d0ffe-cc4d-7059-9073-a132b05430c1,019d0ffe-ccac-755e-93a2-1653013596ba}', '{"A_Expr":{"kind":"AEXPR_OP","name":[{"String":{"sval":"<>"}}],"lexpr":{"ColumnRef":{"fields":[{"String":{"sval":"child_id"}}]}},"rexpr":{"ColumnRef":{"fields":[{"String":{"sval":"parent_id"}}]}}}}'),
  ('019d0ffe-f848-7927-94f9-a64c1762a664', '019d0ffe-4d6d-7080-bf5e-4af8af979c90', '019d0ffe-f705-7b25-908c-2ccabc54d3fc', 'crypto_addresses_address_chk', 'c', '{019d0ffe-f816-755c-b82b-8d29719ef0e2}', '{"A_Expr":{"kind":"AEXPR_OP","name":[{"String":{"sval":"~*"}}],"lexpr":{"ColumnRef":{"fields":[{"String":{"sval":"address"}}]}},"rexpr":{"A_Const":{"sval":"^(bc1|[13])[a-zA-HJ-NP-Z0-9]{25,39}$"}}}}');


SET session_replication_role TO DEFAULT;


