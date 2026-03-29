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
  ('3141eb84-78b2-1263-d57f-8ff6a4ebaaa4', '14b01c2d-072a-5594-645a-675751a83d86', 'f25a8ee5-7a16-ce38-e44a-b946418a9251', 'app_permissions_bitnum_chk', 'c', '{d7fae708-3c55-1f86-10ca-cc0ecff206fc}', '{"BoolExpr":{"args":[{"A_Expr":{"kind":"AEXPR_OP","name":[{"String":{"sval":">="}}],"lexpr":{"ColumnRef":{"fields":[{"String":{"sval":"bitnum"}}]}},"rexpr":{"A_Const":{"ival":1}}}},{"A_Expr":{"kind":"AEXPR_OP","name":[{"String":{"sval":"<="}}],"lexpr":{"ColumnRef":{"fields":[{"String":{"sval":"bitnum"}}]}},"rexpr":{"A_Const":{"ival":24}}}}],"boolop":"AND_EXPR"}}'),
  ('66db9aee-82a8-9e0b-7e81-f4313581e59c', '14b01c2d-072a-5594-645a-675751a83d86', '75e3c6b8-7c7f-e855-311f-f1507052e8df', 'org_chart_edges_child_id_parent_id_chk', 'c', '{591cb66e-7b84-60e1-5e3f-fe6c68fe3891,90dd8ab0-5c3d-4549-56d9-95e08ab8eff0}', '{"A_Expr":{"kind":"AEXPR_OP","name":[{"String":{"sval":"<>"}}],"lexpr":{"ColumnRef":{"fields":[{"String":{"sval":"child_id"}}]}},"rexpr":{"ColumnRef":{"fields":[{"String":{"sval":"parent_id"}}]}}}}'),
  ('928f45ad-cd70-e5b5-a434-7e48edd6b591', '14b01c2d-072a-5594-645a-675751a83d86', '5258dec3-0cde-6103-1859-08598c428740', 'users_display_name_chk', 'c', '{e21c5445-3471-2d59-6c19-c9ee0b6a9bff}', '{"A_Expr":{"kind":"AEXPR_OP","name":[{"String":{"sval":"<="}}],"lexpr":{"FuncCall":{"args":[{"ColumnRef":{"fields":[{"String":{"sval":"display_name"}}]}}],"funcname":[{"String":{"sval":"character_length"}}]}},"rexpr":{"A_Const":{"ival":256}}}}'),
  ('93c67e09-1791-2dcb-1927-f768f30e3876', '14b01c2d-072a-5594-645a-675751a83d86', '5258dec3-0cde-6103-1859-08598c428740', 'users_username_chk', 'c', '{b5707f7c-c604-1206-1b43-6c65b969795c}', '{"A_Expr":{"kind":"AEXPR_OP","name":[{"String":{"sval":"<="}}],"lexpr":{"FuncCall":{"args":[{"ColumnRef":{"fields":[{"String":{"sval":"username"}}]}}],"funcname":[{"String":{"sval":"character_length"}}]}},"rexpr":{"A_Const":{"ival":256}}}}'),
  ('a61168d6-0936-c083-4d23-c3b352a506c1', '14b01c2d-072a-5594-645a-675751a83d86', '162f732d-d7df-85a6-5ae7-155c8d525f0a', 'crypto_addresses_address_chk', 'c', '{4974ee28-b291-2b9e-a843-4a7a03a58093}', '{"A_Expr":{"kind":"AEXPR_OP","name":[{"String":{"sval":"~*"}}],"lexpr":{"ColumnRef":{"fields":[{"String":{"sval":"address"}}]}},"rexpr":{"A_Const":{"sval":"^(bc1|[13])[a-zA-HJ-NP-Z0-9]{25,39}$"}}}}'),
  ('c0d9de5a-157e-906d-5898-8a03aa8079df', '14b01c2d-072a-5594-645a-675751a83d86', '9dec1b06-3907-c9a5-e893-502982e3c0cb', 'org_permissions_bitnum_chk', 'c', '{fdd485a3-9358-eef6-cb17-0a7f411d8f46}', '{"BoolExpr":{"args":[{"A_Expr":{"kind":"AEXPR_OP","name":[{"String":{"sval":">="}}],"lexpr":{"ColumnRef":{"fields":[{"String":{"sval":"bitnum"}}]}},"rexpr":{"A_Const":{"ival":1}}}},{"A_Expr":{"kind":"AEXPR_OP","name":[{"String":{"sval":"<="}}],"lexpr":{"ColumnRef":{"fields":[{"String":{"sval":"bitnum"}}]}},"rexpr":{"A_Const":{"ival":24}}}}],"boolop":"AND_EXPR"}}');


SET session_replication_role TO DEFAULT;


