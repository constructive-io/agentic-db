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
  ('202b485c-9e35-b4a8-ac0f-5a14b5494c3d', 'f2518f84-cbe2-d97a-313c-5b54d1e126ff', '74063376-1e71-fe44-ce96-9da2549d606d', 'org_permissions_bitnum_chk', 'c', '{fb5585d6-02e9-9d6b-1e16-8e2c6e670949}', '{"BoolExpr":{"args":[{"A_Expr":{"kind":"AEXPR_OP","name":[{"String":{"sval":">="}}],"lexpr":{"ColumnRef":{"fields":[{"String":{"sval":"bitnum"}}]}},"rexpr":{"A_Const":{"ival":1}}}},{"A_Expr":{"kind":"AEXPR_OP","name":[{"String":{"sval":"<="}}],"lexpr":{"ColumnRef":{"fields":[{"String":{"sval":"bitnum"}}]}},"rexpr":{"A_Const":{"ival":24}}}}],"boolop":"AND_EXPR"}}'),
  ('2ec1f5e5-6c1d-4a8e-7cb4-a1faee7b88b3', 'f2518f84-cbe2-d97a-313c-5b54d1e126ff', '5b5d99e1-9167-1378-cf99-58449ebc35bc', 'users_username_chk', 'c', '{86cacd54-824d-09e6-ef83-f330d5b2da0f}', '{"A_Expr":{"kind":"AEXPR_OP","name":[{"String":{"sval":"<="}}],"lexpr":{"FuncCall":{"args":[{"ColumnRef":{"fields":[{"String":{"sval":"username"}}]}}],"funcname":[{"String":{"sval":"character_length"}}]}},"rexpr":{"A_Const":{"ival":256}}}}'),
  ('67be3d5f-93cf-e6b5-d4ae-6fdbab8e72fe', 'f2518f84-cbe2-d97a-313c-5b54d1e126ff', '071b46ff-a250-65b3-968c-43752ba4b36b', 'crypto_addresses_address_chk', 'c', '{278a9c2b-6a55-344f-4ca5-3a64a133eb4e}', '{"A_Expr":{"kind":"AEXPR_OP","name":[{"String":{"sval":"~*"}}],"lexpr":{"ColumnRef":{"fields":[{"String":{"sval":"address"}}]}},"rexpr":{"A_Const":{"sval":"^(bc1|[13])[a-zA-HJ-NP-Z0-9]{25,39}$"}}}}'),
  ('7edef8a9-0ce9-8c03-3c45-8a7cb0f5380e', 'f2518f84-cbe2-d97a-313c-5b54d1e126ff', '8b27fb0c-e4ef-3678-e21c-e7ceb4590584', 'app_permissions_bitnum_chk', 'c', '{d7f04aa3-6e8b-15f5-a780-d242e364be97}', '{"BoolExpr":{"args":[{"A_Expr":{"kind":"AEXPR_OP","name":[{"String":{"sval":">="}}],"lexpr":{"ColumnRef":{"fields":[{"String":{"sval":"bitnum"}}]}},"rexpr":{"A_Const":{"ival":1}}}},{"A_Expr":{"kind":"AEXPR_OP","name":[{"String":{"sval":"<="}}],"lexpr":{"ColumnRef":{"fields":[{"String":{"sval":"bitnum"}}]}},"rexpr":{"A_Const":{"ival":24}}}}],"boolop":"AND_EXPR"}}'),
  ('d0fbaa7a-1583-1a41-4ee2-646ea55eb2bf', 'f2518f84-cbe2-d97a-313c-5b54d1e126ff', '5b5d99e1-9167-1378-cf99-58449ebc35bc', 'users_display_name_chk', 'c', '{0b1c8c40-4008-d28e-fcd5-945028d157d8}', '{"A_Expr":{"kind":"AEXPR_OP","name":[{"String":{"sval":"<="}}],"lexpr":{"FuncCall":{"args":[{"ColumnRef":{"fields":[{"String":{"sval":"display_name"}}]}}],"funcname":[{"String":{"sval":"character_length"}}]}},"rexpr":{"A_Const":{"ival":256}}}}'),
  ('ecc82736-b945-dd09-89ba-c0f8f0723868', 'f2518f84-cbe2-d97a-313c-5b54d1e126ff', '687d60b7-c1b5-5537-2a6e-52f922ae4a8b', 'org_chart_edges_child_id_parent_id_chk', 'c', '{453784ff-659d-abc9-4877-fb970eced29d,c619af7a-598c-02f8-10a2-ad6f453db92f}', '{"A_Expr":{"kind":"AEXPR_OP","name":[{"String":{"sval":"<>"}}],"lexpr":{"ColumnRef":{"fields":[{"String":{"sval":"child_id"}}]}},"rexpr":{"ColumnRef":{"fields":[{"String":{"sval":"parent_id"}}]}}}}');


SET session_replication_role TO DEFAULT;


