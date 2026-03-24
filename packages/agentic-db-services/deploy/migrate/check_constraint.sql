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
  ('0615dcf9-fde9-d36a-249d-ec70acf5c143', 'fdf8a620-6969-72d5-d89a-ed384259d249', 'ca24d8bc-b171-7a6a-dc68-32fe80aa7104', 'app_permissions_bitnum_chk', 'c', '{472a36f2-f881-23f1-01aa-9c5e17675578}', '{"BoolExpr":{"args":[{"A_Expr":{"kind":"AEXPR_OP","name":[{"String":{"sval":">="}}],"lexpr":{"ColumnRef":{"fields":[{"String":{"sval":"bitnum"}}]}},"rexpr":{"A_Const":{"ival":1}}}},{"A_Expr":{"kind":"AEXPR_OP","name":[{"String":{"sval":"<="}}],"lexpr":{"ColumnRef":{"fields":[{"String":{"sval":"bitnum"}}]}},"rexpr":{"A_Const":{"ival":24}}}}],"boolop":"AND_EXPR"}}'),
  ('145207ff-7aa6-97a1-3858-10617a4b2bb2', 'fdf8a620-6969-72d5-d89a-ed384259d249', 'a42ab990-9bfb-d930-3f98-a01493cc2158', 'users_display_name_chk', 'c', '{19631970-b384-68c1-65b4-408d7f90e91f}', '{"A_Expr":{"kind":"AEXPR_OP","name":[{"String":{"sval":"<="}}],"lexpr":{"FuncCall":{"args":[{"ColumnRef":{"fields":[{"String":{"sval":"display_name"}}]}}],"funcname":[{"String":{"sval":"character_length"}}]}},"rexpr":{"A_Const":{"ival":256}}}}'),
  ('56cf5be6-7915-9f0a-50b7-2d6d149e6448', 'fdf8a620-6969-72d5-d89a-ed384259d249', '90ed056e-9428-2c82-9591-1c178eec5dc4', 'crypto_addresses_address_chk', 'c', '{2092746e-996e-beb1-1f1e-4272ae6eb6c6}', '{"A_Expr":{"kind":"AEXPR_OP","name":[{"String":{"sval":"~*"}}],"lexpr":{"ColumnRef":{"fields":[{"String":{"sval":"address"}}]}},"rexpr":{"A_Const":{"sval":"^(bc1|[13])[a-zA-HJ-NP-Z0-9]{25,39}$"}}}}'),
  ('77c8097f-99f0-7473-a4b1-c2618faf5b99', 'fdf8a620-6969-72d5-d89a-ed384259d249', 'da94e2fc-8b9e-bbf6-b88b-49c68622ae01', 'org_permissions_bitnum_chk', 'c', '{00cf748d-844a-166b-8880-3c2518285927}', '{"BoolExpr":{"args":[{"A_Expr":{"kind":"AEXPR_OP","name":[{"String":{"sval":">="}}],"lexpr":{"ColumnRef":{"fields":[{"String":{"sval":"bitnum"}}]}},"rexpr":{"A_Const":{"ival":1}}}},{"A_Expr":{"kind":"AEXPR_OP","name":[{"String":{"sval":"<="}}],"lexpr":{"ColumnRef":{"fields":[{"String":{"sval":"bitnum"}}]}},"rexpr":{"A_Const":{"ival":24}}}}],"boolop":"AND_EXPR"}}'),
  ('ca249231-b93f-f4d7-68fa-ed3b74aadbc3', 'fdf8a620-6969-72d5-d89a-ed384259d249', 'b71f5daf-cde9-c59f-45f5-663c3117d780', 'org_chart_edges_child_id_parent_id_chk', 'c', '{a34f9f30-4139-a56d-c024-e864b4799c75,70905d44-b5c7-0d74-f316-b401c72e9892}', '{"A_Expr":{"kind":"AEXPR_OP","name":[{"String":{"sval":"<>"}}],"lexpr":{"ColumnRef":{"fields":[{"String":{"sval":"child_id"}}]}},"rexpr":{"ColumnRef":{"fields":[{"String":{"sval":"parent_id"}}]}}}}'),
  ('df72d3dc-edcb-af31-ea05-a225155f7252', 'fdf8a620-6969-72d5-d89a-ed384259d249', 'a42ab990-9bfb-d930-3f98-a01493cc2158', 'users_username_chk', 'c', '{e8c81405-de2f-d680-5fe9-f9e005177e2e}', '{"A_Expr":{"kind":"AEXPR_OP","name":[{"String":{"sval":"<="}}],"lexpr":{"FuncCall":{"args":[{"ColumnRef":{"fields":[{"String":{"sval":"username"}}]}}],"funcname":[{"String":{"sval":"character_length"}}]}},"rexpr":{"A_Const":{"ival":256}}}}');


SET session_replication_role TO DEFAULT;


