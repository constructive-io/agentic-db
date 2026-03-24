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
  ('019d1dbf-db38-718c-99c5-0a606b996c26', '019d1dbf-d7f4-78e2-8f5c-6e811773c2c7', '019d1dbf-daa0-7aec-93eb-49f5dbb6aab6', 'users_username_chk', 'c', '{019d1dbf-db25-7b05-8241-976ac0c83075}', '{"A_Expr":{"kind":"AEXPR_OP","name":[{"String":{"sval":"<="}}],"lexpr":{"FuncCall":{"args":[{"ColumnRef":{"fields":[{"String":{"sval":"username"}}]}}],"funcname":[{"String":{"sval":"character_length"}}]}},"rexpr":{"A_Const":{"ival":256}}}}'),
  ('019d1dbf-db72-7c9f-acf5-946801c20f04', '019d1dbf-d7f4-78e2-8f5c-6e811773c2c7', '019d1dbf-daa0-7aec-93eb-49f5dbb6aab6', 'users_display_name_chk', 'c', '{019d1dbf-db62-78fb-83bc-38bec70ef774}', '{"A_Expr":{"kind":"AEXPR_OP","name":[{"String":{"sval":"<="}}],"lexpr":{"FuncCall":{"args":[{"ColumnRef":{"fields":[{"String":{"sval":"display_name"}}]}}],"funcname":[{"String":{"sval":"character_length"}}]}},"rexpr":{"A_Const":{"ival":256}}}}'),
  ('019d1dbf-e17a-7246-ab3d-a8dc80eb36a4', '019d1dbf-d7f4-78e2-8f5c-6e811773c2c7', '019d1dbf-e0ba-7002-9545-20cb99c8cb10', 'app_permissions_bitnum_chk', 'c', '{019d1dbf-e16a-7d8f-8ec2-cdf7d4243051}', '{"BoolExpr":{"args":[{"A_Expr":{"kind":"AEXPR_OP","name":[{"String":{"sval":">="}}],"lexpr":{"ColumnRef":{"fields":[{"String":{"sval":"bitnum"}}]}},"rexpr":{"A_Const":{"ival":1}}}},{"A_Expr":{"kind":"AEXPR_OP","name":[{"String":{"sval":"<="}}],"lexpr":{"ColumnRef":{"fields":[{"String":{"sval":"bitnum"}}]}},"rexpr":{"A_Const":{"ival":24}}}}],"boolop":"AND_EXPR"}}'),
  ('019d1dc0-1ac6-7270-92b2-6dc781808352', '019d1dbf-d7f4-78e2-8f5c-6e811773c2c7', '019d1dc0-19e4-711b-bca5-5a34983e388c', 'org_permissions_bitnum_chk', 'c', '{019d1dc0-1ab3-77d1-a849-90dab9825e83}', '{"BoolExpr":{"args":[{"A_Expr":{"kind":"AEXPR_OP","name":[{"String":{"sval":">="}}],"lexpr":{"ColumnRef":{"fields":[{"String":{"sval":"bitnum"}}]}},"rexpr":{"A_Const":{"ival":1}}}},{"A_Expr":{"kind":"AEXPR_OP","name":[{"String":{"sval":"<="}}],"lexpr":{"ColumnRef":{"fields":[{"String":{"sval":"bitnum"}}]}},"rexpr":{"A_Const":{"ival":24}}}}],"boolop":"AND_EXPR"}}'),
  ('019d1dc0-68c3-790a-ab2b-6dfb462812f6', '019d1dbf-d7f4-78e2-8f5c-6e811773c2c7', '019d1dc0-65e0-7325-b8f8-8a9cc5e98161', 'org_chart_edges_child_id_parent_id_chk', 'c', '{019d1dc0-677f-711f-95fc-6d2d3c1a7eeb,019d1dc0-67d6-701d-aca0-3a71f64d1f5d}', '{"A_Expr":{"kind":"AEXPR_OP","name":[{"String":{"sval":"<>"}}],"lexpr":{"ColumnRef":{"fields":[{"String":{"sval":"child_id"}}]}},"rexpr":{"ColumnRef":{"fields":[{"String":{"sval":"parent_id"}}]}}}}'),
  ('019d1dc0-999f-7928-995f-a7d09e90f150', '019d1dbf-d7f4-78e2-8f5c-6e811773c2c7', '019d1dc0-9866-743b-a5ad-e8b2cc251c85', 'crypto_addresses_address_chk', 'c', '{019d1dc0-996d-7af9-b979-71d33e19b518}', '{"A_Expr":{"kind":"AEXPR_OP","name":[{"String":{"sval":"~*"}}],"lexpr":{"ColumnRef":{"fields":[{"String":{"sval":"address"}}]}},"rexpr":{"A_Const":{"sval":"^(bc1|[13])[a-zA-HJ-NP-Z0-9]{25,39}$"}}}}');


SET session_replication_role TO DEFAULT;


