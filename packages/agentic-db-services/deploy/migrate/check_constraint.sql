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
  ('019d1736-5b9a-7421-a3b5-c079fb7a0e52', '019d1736-587a-73df-addd-59801f8d68ca', '019d1736-5b0d-7766-9f99-3cf518199163', 'users_username_chk', 'c', '{019d1736-5b86-7de1-9cb7-798d76acba87}', '{"A_Expr":{"kind":"AEXPR_OP","name":[{"String":{"sval":"<="}}],"lexpr":{"FuncCall":{"args":[{"ColumnRef":{"fields":[{"String":{"sval":"username"}}]}}],"funcname":[{"String":{"sval":"character_length"}}]}},"rexpr":{"A_Const":{"ival":256}}}}'),
  ('019d1736-5bd3-7fca-887d-3ac1ca3df702', '019d1736-587a-73df-addd-59801f8d68ca', '019d1736-5b0d-7766-9f99-3cf518199163', 'users_display_name_chk', 'c', '{019d1736-5bc5-71a7-ba41-92c94ee9138b}', '{"A_Expr":{"kind":"AEXPR_OP","name":[{"String":{"sval":"<="}}],"lexpr":{"FuncCall":{"args":[{"ColumnRef":{"fields":[{"String":{"sval":"display_name"}}]}}],"funcname":[{"String":{"sval":"character_length"}}]}},"rexpr":{"A_Const":{"ival":256}}}}'),
  ('019d1736-6137-759d-8bb5-01b87157fa7c', '019d1736-587a-73df-addd-59801f8d68ca', '019d1736-6088-7457-a126-68aadf738035', 'app_permissions_bitnum_chk', 'c', '{019d1736-6128-76cf-8aae-d4674e6848e9}', '{"BoolExpr":{"args":[{"A_Expr":{"kind":"AEXPR_OP","name":[{"String":{"sval":">="}}],"lexpr":{"ColumnRef":{"fields":[{"String":{"sval":"bitnum"}}]}},"rexpr":{"A_Const":{"ival":1}}}},{"A_Expr":{"kind":"AEXPR_OP","name":[{"String":{"sval":"<="}}],"lexpr":{"ColumnRef":{"fields":[{"String":{"sval":"bitnum"}}]}},"rexpr":{"A_Const":{"ival":24}}}}],"boolop":"AND_EXPR"}}'),
  ('019d1736-8fac-7b00-bc62-4773a4987858', '019d1736-587a-73df-addd-59801f8d68ca', '019d1736-8ee0-7f9c-a7ec-e61ae5cdeeef', 'org_permissions_bitnum_chk', 'c', '{019d1736-8f97-77f0-b456-77952774d3d8}', '{"BoolExpr":{"args":[{"A_Expr":{"kind":"AEXPR_OP","name":[{"String":{"sval":">="}}],"lexpr":{"ColumnRef":{"fields":[{"String":{"sval":"bitnum"}}]}},"rexpr":{"A_Const":{"ival":1}}}},{"A_Expr":{"kind":"AEXPR_OP","name":[{"String":{"sval":"<="}}],"lexpr":{"ColumnRef":{"fields":[{"String":{"sval":"bitnum"}}]}},"rexpr":{"A_Const":{"ival":24}}}}],"boolop":"AND_EXPR"}}'),
  ('019d1736-c8f1-72bf-835b-d4198a704a3d', '019d1736-587a-73df-addd-59801f8d68ca', '019d1736-c65a-7489-b0fe-00723a147365', 'org_chart_edges_child_id_parent_id_chk', 'c', '{019d1736-c7b8-7e1f-b1b7-4c728b04b21a,019d1736-c80c-7b33-b98b-ce9191c8f0f3}', '{"A_Expr":{"kind":"AEXPR_OP","name":[{"String":{"sval":"<>"}}],"lexpr":{"ColumnRef":{"fields":[{"String":{"sval":"child_id"}}]}},"rexpr":{"ColumnRef":{"fields":[{"String":{"sval":"parent_id"}}]}}}}'),
  ('019d1736-f085-7ac4-b57c-1b01fc782785', '019d1736-587a-73df-addd-59801f8d68ca', '019d1736-ef55-7a65-9af5-bd102f6bd601', 'crypto_addresses_address_chk', 'c', '{019d1736-f056-77ea-a7f4-07c08e2bd49b}', '{"A_Expr":{"kind":"AEXPR_OP","name":[{"String":{"sval":"~*"}}],"lexpr":{"ColumnRef":{"fields":[{"String":{"sval":"address"}}]}},"rexpr":{"A_Const":{"sval":"^(bc1|[13])[a-zA-HJ-NP-Z0-9]{25,39}$"}}}}');


SET session_replication_role TO DEFAULT;


