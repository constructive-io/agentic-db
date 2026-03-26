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
  ('019d2831-63e6-7584-8810-358f684e05b0', '019d2831-6080-7e86-a360-21cd48c6ce49', '019d2831-6349-7cde-a517-c115bf8f4bff', 'users_username_chk', 'c', '{019d2831-63d1-790e-85b9-2664f34df021}', '{"A_Expr":{"kind":"AEXPR_OP","name":[{"String":{"sval":"<="}}],"lexpr":{"FuncCall":{"args":[{"ColumnRef":{"fields":[{"String":{"sval":"username"}}]}}],"funcname":[{"String":{"sval":"character_length"}}]}},"rexpr":{"A_Const":{"ival":256}}}}'),
  ('019d2831-6420-7e82-907e-919670214ba4', '019d2831-6080-7e86-a360-21cd48c6ce49', '019d2831-6349-7cde-a517-c115bf8f4bff', 'users_display_name_chk', 'c', '{019d2831-6411-72dd-82a9-10e254ec7ca4}', '{"A_Expr":{"kind":"AEXPR_OP","name":[{"String":{"sval":"<="}}],"lexpr":{"FuncCall":{"args":[{"ColumnRef":{"fields":[{"String":{"sval":"display_name"}}]}}],"funcname":[{"String":{"sval":"character_length"}}]}},"rexpr":{"A_Const":{"ival":256}}}}'),
  ('019d2831-6a5c-7242-9ca6-f87e20afcefc', '019d2831-6080-7e86-a360-21cd48c6ce49', '019d2831-6993-7415-bc88-2c55d7aa6811', 'app_permissions_bitnum_chk', 'c', '{019d2831-6a4b-7e64-9551-7a72199c4aa6}', '{"BoolExpr":{"args":[{"A_Expr":{"kind":"AEXPR_OP","name":[{"String":{"sval":">="}}],"lexpr":{"ColumnRef":{"fields":[{"String":{"sval":"bitnum"}}]}},"rexpr":{"A_Const":{"ival":1}}}},{"A_Expr":{"kind":"AEXPR_OP","name":[{"String":{"sval":"<="}}],"lexpr":{"ColumnRef":{"fields":[{"String":{"sval":"bitnum"}}]}},"rexpr":{"A_Const":{"ival":24}}}}],"boolop":"AND_EXPR"}}'),
  ('019d2831-a489-72f3-baf6-4e8b0a310000', '019d2831-6080-7e86-a360-21cd48c6ce49', '019d2831-a3ad-7ec2-a3ba-39b15c9e4901', 'org_permissions_bitnum_chk', 'c', '{019d2831-a475-78c8-8254-04c5ffba5674}', '{"BoolExpr":{"args":[{"A_Expr":{"kind":"AEXPR_OP","name":[{"String":{"sval":">="}}],"lexpr":{"ColumnRef":{"fields":[{"String":{"sval":"bitnum"}}]}},"rexpr":{"A_Const":{"ival":1}}}},{"A_Expr":{"kind":"AEXPR_OP","name":[{"String":{"sval":"<="}}],"lexpr":{"ColumnRef":{"fields":[{"String":{"sval":"bitnum"}}]}},"rexpr":{"A_Const":{"ival":24}}}}],"boolop":"AND_EXPR"}}'),
  ('019d2831-f42b-7edc-9dfe-dbaf0742034c', '019d2831-6080-7e86-a360-21cd48c6ce49', '019d2831-f149-7d89-a983-3a738af9398d', 'org_chart_edges_child_id_parent_id_chk', 'c', '{019d2831-f2d0-7863-86be-fc09c4d192a2,019d2831-f331-729a-92a1-3aec888f8b5d}', '{"A_Expr":{"kind":"AEXPR_OP","name":[{"String":{"sval":"<>"}}],"lexpr":{"ColumnRef":{"fields":[{"String":{"sval":"child_id"}}]}},"rexpr":{"ColumnRef":{"fields":[{"String":{"sval":"parent_id"}}]}}}}'),
  ('019d2832-26e7-7b4c-b4f6-d43cf0f59de5', '019d2831-6080-7e86-a360-21cd48c6ce49', '019d2832-2597-71a0-b86f-7e4a08533794', 'crypto_addresses_address_chk', 'c', '{019d2832-26b3-7f98-a46d-ba33ec5e6d4d}', '{"A_Expr":{"kind":"AEXPR_OP","name":[{"String":{"sval":"~*"}}],"lexpr":{"ColumnRef":{"fields":[{"String":{"sval":"address"}}]}},"rexpr":{"A_Const":{"sval":"^(bc1|[13])[a-zA-HJ-NP-Z0-9]{25,39}$"}}}}');


SET session_replication_role TO DEFAULT;


