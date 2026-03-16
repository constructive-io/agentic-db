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
  ('bfc16344-7cda-41af-62b8-5ba02029ebc6', '569edc6d-3f84-4a51-a145-e5d82d9c06d3', 'bfc15408-cbc4-4c59-b505-cd51e0ad5353', 'users_username_chk', 'c', '{bfc14089-7316-45ae-1e2a-1738315ac245}', '{"A_Expr":{"kind":"AEXPR_OP","name":[{"String":{"sval":"<="}}],"lexpr":{"FuncCall":{"args":[{"ColumnRef":{"fields":[{"String":{"sval":"username"}}]}}],"funcname":[{"String":{"sval":"character_length"}}]}},"rexpr":{"A_Const":{"ival":256}}}}'),
  ('bfc1d304-4014-4124-4b5e-a5c7a8beabce', '569edc6d-3f84-4a51-a145-e5d82d9c06d3', 'bfc15408-cbc4-4c59-b505-cd51e0ad5353', 'users_display_name_chk', 'c', '{bfc1f654-d2b7-4628-da54-12fd5f6e6724}', '{"A_Expr":{"kind":"AEXPR_OP","name":[{"String":{"sval":"<="}}],"lexpr":{"FuncCall":{"args":[{"ColumnRef":{"fields":[{"String":{"sval":"display_name"}}]}}],"funcname":[{"String":{"sval":"character_length"}}]}},"rexpr":{"A_Const":{"ival":256}}}}'),
  ('bfc1d7a2-ad38-4b03-cd0f-4daf3b263821', '569edc6d-3f84-4a51-a145-e5d82d9c06d3', 'bfc1f6ea-64e0-47d5-ca83-acf100c9d998', 'app_permissions_bitnum_chk', 'c', '{bfc1f441-b700-414c-83c0-42541cde997d}', '{"BoolExpr":{"args":[{"A_Expr":{"kind":"AEXPR_OP","name":[{"String":{"sval":">="}}],"lexpr":{"ColumnRef":{"fields":[{"String":{"sval":"bitnum"}}]}},"rexpr":{"A_Const":{"ival":1}}}},{"A_Expr":{"kind":"AEXPR_OP","name":[{"String":{"sval":"<="}}],"lexpr":{"ColumnRef":{"fields":[{"String":{"sval":"bitnum"}}]}},"rexpr":{"A_Const":{"ival":24}}}}],"boolop":"AND_EXPR"}}'),
  ('bfc14c60-e427-405c-2f76-d6ddf2524958', '569edc6d-3f84-4a51-a145-e5d82d9c06d3', 'bfc19ae3-2460-43f0-9a1b-9bfb6230c3a5', 'org_permissions_bitnum_chk', 'c', '{bfc11232-d9d0-406c-db9a-d76992abc31b}', '{"BoolExpr":{"args":[{"A_Expr":{"kind":"AEXPR_OP","name":[{"String":{"sval":">="}}],"lexpr":{"ColumnRef":{"fields":[{"String":{"sval":"bitnum"}}]}},"rexpr":{"A_Const":{"ival":1}}}},{"A_Expr":{"kind":"AEXPR_OP","name":[{"String":{"sval":"<="}}],"lexpr":{"ColumnRef":{"fields":[{"String":{"sval":"bitnum"}}]}},"rexpr":{"A_Const":{"ival":24}}}}],"boolop":"AND_EXPR"}}'),
  ('bfc10d2d-a1eb-4dd6-e81c-c7311a230eb6', '569edc6d-3f84-4a51-a145-e5d82d9c06d3', 'bfc1d3ce-f18f-447a-b100-39155e5e62eb', 'org_chart_edges_child_id_parent_id_chk', 'c', '{bfc1a3db-e2dd-4562-e25b-a556c167b950,bfc10ad1-ca97-4f42-27ae-afc6bfe11cca}', '{"A_Expr":{"kind":"AEXPR_OP","name":[{"String":{"sval":"<>"}}],"lexpr":{"ColumnRef":{"fields":[{"String":{"sval":"child_id"}}]}},"rexpr":{"ColumnRef":{"fields":[{"String":{"sval":"parent_id"}}]}}}}'),
  ('bfc1e630-8c60-4664-1f67-eefb22f72919', '569edc6d-3f84-4a51-a145-e5d82d9c06d3', 'bfc1388d-a6d1-4aec-e1e1-10327e66d97d', 'crypto_addresses_address_chk', 'c', '{bfc1dca5-87bf-4379-4ab8-f6209e98e2e4}', '{"A_Expr":{"kind":"AEXPR_OP","name":[{"String":{"sval":"~*"}}],"lexpr":{"ColumnRef":{"fields":[{"String":{"sval":"address"}}]}},"rexpr":{"A_Const":{"sval":"^(bc1|[13])[a-zA-HJ-NP-Z0-9]{25,39}$"}}}}');


SET session_replication_role TO DEFAULT;


