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
  ('0203a5e9-c906-8ab6-bbba-256206d4358f', '2ef50f93-192b-b168-969d-304c8e675e1d', '5353e947-3e3f-3914-7fd1-1370926dd743', 'users_display_name_chk', 'c', '{f1b4c725-4a6e-259b-3d77-0618660a6243}', '{"A_Expr":{"kind":"AEXPR_OP","name":[{"String":{"sval":"<="}}],"lexpr":{"FuncCall":{"args":[{"ColumnRef":{"fields":[{"String":{"sval":"display_name"}}]}}],"funcname":[{"String":{"sval":"character_length"}}]}},"rexpr":{"A_Const":{"ival":256}}}}'),
  ('387e9e0d-487f-c54d-7b5d-706e2b6615ad', '2ef50f93-192b-b168-969d-304c8e675e1d', 'ee8f193d-af6d-6828-39e5-ed25f55fc9a3', 'org_permissions_bitnum_chk', 'c', '{709c8a6b-5499-dca7-540f-5259667a99c1}', '{"BoolExpr":{"args":[{"A_Expr":{"kind":"AEXPR_OP","name":[{"String":{"sval":">="}}],"lexpr":{"ColumnRef":{"fields":[{"String":{"sval":"bitnum"}}]}},"rexpr":{"A_Const":{"ival":1}}}},{"A_Expr":{"kind":"AEXPR_OP","name":[{"String":{"sval":"<="}}],"lexpr":{"ColumnRef":{"fields":[{"String":{"sval":"bitnum"}}]}},"rexpr":{"A_Const":{"ival":24}}}}],"boolop":"AND_EXPR"}}'),
  ('49479a59-ba25-ee37-1e22-31fdea62f1d4', '2ef50f93-192b-b168-969d-304c8e675e1d', '97c66666-071d-6f46-7967-85437fc3c183', 'app_permissions_bitnum_chk', 'c', '{b425c564-0d3e-c6f0-bf9a-b548f9ae4826}', '{"BoolExpr":{"args":[{"A_Expr":{"kind":"AEXPR_OP","name":[{"String":{"sval":">="}}],"lexpr":{"ColumnRef":{"fields":[{"String":{"sval":"bitnum"}}]}},"rexpr":{"A_Const":{"ival":1}}}},{"A_Expr":{"kind":"AEXPR_OP","name":[{"String":{"sval":"<="}}],"lexpr":{"ColumnRef":{"fields":[{"String":{"sval":"bitnum"}}]}},"rexpr":{"A_Const":{"ival":24}}}}],"boolop":"AND_EXPR"}}'),
  ('6cf64243-4eb5-d172-6f06-de9a60995d5f', '2ef50f93-192b-b168-969d-304c8e675e1d', 'faaf37b8-95ed-1f8e-90f9-2bfa6e22dd4a', 'crypto_addresses_address_chk', 'c', '{69604cb6-b699-2792-8a55-f56b15138501}', '{"A_Expr":{"kind":"AEXPR_OP","name":[{"String":{"sval":"~*"}}],"lexpr":{"ColumnRef":{"fields":[{"String":{"sval":"address"}}]}},"rexpr":{"A_Const":{"sval":"^(bc1|[13])[a-zA-HJ-NP-Z0-9]{25,39}$"}}}}'),
  ('90786f46-5468-6eb3-c72f-11fbfa27cf1f', '2ef50f93-192b-b168-969d-304c8e675e1d', 'be390931-dcdf-fa6e-81f3-3fa64288fdfa', 'org_chart_edges_child_id_parent_id_chk', 'c', '{5669c560-231d-45c4-b68b-e0e07e9f80ed,97681864-04fc-9924-a358-03866a91b5a1}', '{"A_Expr":{"kind":"AEXPR_OP","name":[{"String":{"sval":"<>"}}],"lexpr":{"ColumnRef":{"fields":[{"String":{"sval":"child_id"}}]}},"rexpr":{"ColumnRef":{"fields":[{"String":{"sval":"parent_id"}}]}}}}'),
  ('cde28045-d565-84a0-38fe-e4315aef06b2', '2ef50f93-192b-b168-969d-304c8e675e1d', '5353e947-3e3f-3914-7fd1-1370926dd743', 'users_username_chk', 'c', '{547cafc1-f9cc-95a6-c9a4-b98bbe62b151}', '{"A_Expr":{"kind":"AEXPR_OP","name":[{"String":{"sval":"<="}}],"lexpr":{"FuncCall":{"args":[{"ColumnRef":{"fields":[{"String":{"sval":"username"}}]}}],"funcname":[{"String":{"sval":"character_length"}}]}},"rexpr":{"A_Const":{"ival":256}}}}');


SET session_replication_role TO DEFAULT;


