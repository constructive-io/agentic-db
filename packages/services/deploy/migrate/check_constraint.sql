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
  ('9bc10031-ea52-426e-fe89-e8a9a9d971dd', '14d9536f-0092-4ddb-87f8-eddad14902bd', '9bc12972-1a70-4812-beb6-f24029a19ea6', 'users_username_chk', 'c', '{9bc122c1-1ffb-4ffc-4146-1292e5fa78e1}', '{"A_Expr":{"kind":"AEXPR_OP","name":[{"String":{"sval":"<="}}],"lexpr":{"FuncCall":{"args":[{"ColumnRef":{"fields":[{"String":{"sval":"username"}}]}}],"funcname":[{"String":{"sval":"character_length"}}]}},"rexpr":{"A_Const":{"ival":256}}}}'),
  ('9bc1e63d-9741-4092-ea6f-4946260cdb60', '14d9536f-0092-4ddb-87f8-eddad14902bd', '9bc12972-1a70-4812-beb6-f24029a19ea6', 'users_display_name_chk', 'c', '{9bc15ed7-ddcb-4fec-4493-d2d9f14f39a4}', '{"A_Expr":{"kind":"AEXPR_OP","name":[{"String":{"sval":"<="}}],"lexpr":{"FuncCall":{"args":[{"ColumnRef":{"fields":[{"String":{"sval":"display_name"}}]}}],"funcname":[{"String":{"sval":"character_length"}}]}},"rexpr":{"A_Const":{"ival":256}}}}'),
  ('9bc16519-cb4f-42be-afc4-d15ee7fdff6b', '14d9536f-0092-4ddb-87f8-eddad14902bd', '9bc15426-7cb4-4f1e-cbf6-a2ada0a98188', 'app_permissions_bitnum_chk', 'c', '{9bc1ee37-9ab3-463e-2e90-8c6b17418d17}', '{"BoolExpr":{"args":[{"A_Expr":{"kind":"AEXPR_OP","name":[{"String":{"sval":">="}}],"lexpr":{"ColumnRef":{"fields":[{"String":{"sval":"bitnum"}}]}},"rexpr":{"A_Const":{"ival":1}}}},{"A_Expr":{"kind":"AEXPR_OP","name":[{"String":{"sval":"<="}}],"lexpr":{"ColumnRef":{"fields":[{"String":{"sval":"bitnum"}}]}},"rexpr":{"A_Const":{"ival":24}}}}],"boolop":"AND_EXPR"}}'),
  ('9bc1bc81-d6a4-4140-65b1-a3988fe80949', '14d9536f-0092-4ddb-87f8-eddad14902bd', '9bc17982-a20f-4da2-eb63-2f4bf9860571', 'org_permissions_bitnum_chk', 'c', '{9bc19bb4-3c6c-4384-3f7c-096d76b0a1c1}', '{"BoolExpr":{"args":[{"A_Expr":{"kind":"AEXPR_OP","name":[{"String":{"sval":">="}}],"lexpr":{"ColumnRef":{"fields":[{"String":{"sval":"bitnum"}}]}},"rexpr":{"A_Const":{"ival":1}}}},{"A_Expr":{"kind":"AEXPR_OP","name":[{"String":{"sval":"<="}}],"lexpr":{"ColumnRef":{"fields":[{"String":{"sval":"bitnum"}}]}},"rexpr":{"A_Const":{"ival":24}}}}],"boolop":"AND_EXPR"}}'),
  ('9bc1fcb3-3fc0-4f5d-77c8-ead148709ef1', '14d9536f-0092-4ddb-87f8-eddad14902bd', '9bc11169-3cdb-4a02-10ea-abee16d31433', 'org_chart_edges_child_id_parent_id_chk', 'c', '{9bc178f8-85c9-49f8-5285-9c4f679f9306,9bc19c33-7634-46f1-90c7-6fec288cf573}', '{"A_Expr":{"kind":"AEXPR_OP","name":[{"String":{"sval":"<>"}}],"lexpr":{"ColumnRef":{"fields":[{"String":{"sval":"child_id"}}]}},"rexpr":{"ColumnRef":{"fields":[{"String":{"sval":"parent_id"}}]}}}}'),
  ('9bc1e386-43e8-49e2-1b48-3427a5c942ef', '14d9536f-0092-4ddb-87f8-eddad14902bd', '9bc1595d-9775-4de4-6607-7dfbe10d4b6f', 'crypto_addresses_address_chk', 'c', '{9bc1a710-0550-4c7c-5b4c-930b0d8abff8}', '{"A_Expr":{"kind":"AEXPR_OP","name":[{"String":{"sval":"~*"}}],"lexpr":{"ColumnRef":{"fields":[{"String":{"sval":"address"}}]}},"rexpr":{"A_Const":{"sval":"^(bc1|[13])[a-zA-HJ-NP-Z0-9]{25,39}$"}}}}');


SET session_replication_role TO DEFAULT;


