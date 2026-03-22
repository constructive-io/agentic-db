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
  ('019d1795-49e2-7135-bbfc-568dd7099304', '019d1795-468e-7f13-8fa9-c40a9f5f3beb', '019d1795-494e-7deb-bd76-39af3a5fa635', 'users_username_chk', 'c', '{019d1795-49c1-7a1b-be54-dfd2465ba379}', '{"A_Expr":{"kind":"AEXPR_OP","name":[{"String":{"sval":"<="}}],"lexpr":{"FuncCall":{"args":[{"ColumnRef":{"fields":[{"String":{"sval":"username"}}]}}],"funcname":[{"String":{"sval":"character_length"}}]}},"rexpr":{"A_Const":{"ival":256}}}}'),
  ('019d1795-4a1e-7f3a-9a5d-9c5b6f757909', '019d1795-468e-7f13-8fa9-c40a9f5f3beb', '019d1795-494e-7deb-bd76-39af3a5fa635', 'users_display_name_chk', 'c', '{019d1795-4a10-772f-a3f2-4e67f6d0e55c}', '{"A_Expr":{"kind":"AEXPR_OP","name":[{"String":{"sval":"<="}}],"lexpr":{"FuncCall":{"args":[{"ColumnRef":{"fields":[{"String":{"sval":"display_name"}}]}}],"funcname":[{"String":{"sval":"character_length"}}]}},"rexpr":{"A_Const":{"ival":256}}}}'),
  ('019d1795-4f7d-7c26-8b51-3646f1402dfe', '019d1795-468e-7f13-8fa9-c40a9f5f3beb', '019d1795-4ece-7922-a931-77d9305f9fc3', 'app_permissions_bitnum_chk', 'c', '{019d1795-4f6d-7568-9779-dafc729401b1}', '{"BoolExpr":{"args":[{"A_Expr":{"kind":"AEXPR_OP","name":[{"String":{"sval":">="}}],"lexpr":{"ColumnRef":{"fields":[{"String":{"sval":"bitnum"}}]}},"rexpr":{"A_Const":{"ival":1}}}},{"A_Expr":{"kind":"AEXPR_OP","name":[{"String":{"sval":"<="}}],"lexpr":{"ColumnRef":{"fields":[{"String":{"sval":"bitnum"}}]}},"rexpr":{"A_Const":{"ival":24}}}}],"boolop":"AND_EXPR"}}'),
  ('019d1795-7f46-7f2a-913a-6d91e9c07fb3', '019d1795-468e-7f13-8fa9-c40a9f5f3beb', '019d1795-7e77-75a1-8cdd-77613c886fd7', 'org_permissions_bitnum_chk', 'c', '{019d1795-7f34-706c-a9f9-95b7ed1a2697}', '{"BoolExpr":{"args":[{"A_Expr":{"kind":"AEXPR_OP","name":[{"String":{"sval":">="}}],"lexpr":{"ColumnRef":{"fields":[{"String":{"sval":"bitnum"}}]}},"rexpr":{"A_Const":{"ival":1}}}},{"A_Expr":{"kind":"AEXPR_OP","name":[{"String":{"sval":"<="}}],"lexpr":{"ColumnRef":{"fields":[{"String":{"sval":"bitnum"}}]}},"rexpr":{"A_Const":{"ival":24}}}}],"boolop":"AND_EXPR"}}'),
  ('019d1795-c166-7f4b-823e-0d58828fff7f', '019d1795-468e-7f13-8fa9-c40a9f5f3beb', '019d1795-be82-7e06-b957-376065ac3926', 'org_chart_edges_child_id_parent_id_chk', 'c', '{019d1795-c010-7e6d-8782-488a4b9ea0ab,019d1795-c06a-7bc5-a395-242630f7dd64}', '{"A_Expr":{"kind":"AEXPR_OP","name":[{"String":{"sval":"<>"}}],"lexpr":{"ColumnRef":{"fields":[{"String":{"sval":"child_id"}}]}},"rexpr":{"ColumnRef":{"fields":[{"String":{"sval":"parent_id"}}]}}}}'),
  ('019d1795-ede0-7a97-8aee-bc2537068785', '019d1795-468e-7f13-8fa9-c40a9f5f3beb', '019d1795-ec7e-7a44-ae1e-73ab12059139', 'crypto_addresses_address_chk', 'c', '{019d1795-eda6-797c-8e5c-9937a484d6d9}', '{"A_Expr":{"kind":"AEXPR_OP","name":[{"String":{"sval":"~*"}}],"lexpr":{"ColumnRef":{"fields":[{"String":{"sval":"address"}}]}},"rexpr":{"A_Const":{"sval":"^(bc1|[13])[a-zA-HJ-NP-Z0-9]{25,39}$"}}}}');


SET session_replication_role TO DEFAULT;


