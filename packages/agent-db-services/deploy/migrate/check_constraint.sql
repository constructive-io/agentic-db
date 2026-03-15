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
  ('a00860a5-27e5-45dd-6027-f79aa111d30d', '9085366f-6c6f-49b7-a4c9-c82d816fded5', 'a0082485-cf01-4c72-8c4f-76422cceded1', 'users_username_chk', 'c', '{a008261a-4885-41e2-1d5a-34e0a96b503d}', '{"A_Expr":{"kind":"AEXPR_OP","name":[{"String":{"sval":"<="}}],"lexpr":{"FuncCall":{"args":[{"ColumnRef":{"fields":[{"String":{"sval":"username"}}]}}],"funcname":[{"String":{"sval":"character_length"}}]}},"rexpr":{"A_Const":{"ival":256}}}}'),
  ('a0081287-da38-4211-c27b-b2c771ceaf07', '9085366f-6c6f-49b7-a4c9-c82d816fded5', 'a0082485-cf01-4c72-8c4f-76422cceded1', 'users_display_name_chk', 'c', '{a00875a7-e588-47be-8b58-9580e5c24697}', '{"A_Expr":{"kind":"AEXPR_OP","name":[{"String":{"sval":"<="}}],"lexpr":{"FuncCall":{"args":[{"ColumnRef":{"fields":[{"String":{"sval":"display_name"}}]}}],"funcname":[{"String":{"sval":"character_length"}}]}},"rexpr":{"A_Const":{"ival":256}}}}'),
  ('a0084283-f25a-48ac-6f42-e839621226dc', '9085366f-6c6f-49b7-a4c9-c82d816fded5', 'a0080e21-0752-4f6a-54c2-1466fb5b80d4', 'app_permissions_bitnum_chk', 'c', '{a008e56c-4999-4e55-12a5-dc3cc2752dcd}', '{"BoolExpr":{"args":[{"A_Expr":{"kind":"AEXPR_OP","name":[{"String":{"sval":">="}}],"lexpr":{"ColumnRef":{"fields":[{"String":{"sval":"bitnum"}}]}},"rexpr":{"A_Const":{"ival":1}}}},{"A_Expr":{"kind":"AEXPR_OP","name":[{"String":{"sval":"<="}}],"lexpr":{"ColumnRef":{"fields":[{"String":{"sval":"bitnum"}}]}},"rexpr":{"A_Const":{"ival":24}}}}],"boolop":"AND_EXPR"}}'),
  ('a0088a38-1b7d-41a3-0044-1da330ef637e', '9085366f-6c6f-49b7-a4c9-c82d816fded5', 'a0088dd5-9f3c-438c-af88-593142359c1a', 'org_permissions_bitnum_chk', 'c', '{a0088f6b-b7bb-4690-4c30-18d8acb5ebde}', '{"BoolExpr":{"args":[{"A_Expr":{"kind":"AEXPR_OP","name":[{"String":{"sval":">="}}],"lexpr":{"ColumnRef":{"fields":[{"String":{"sval":"bitnum"}}]}},"rexpr":{"A_Const":{"ival":1}}}},{"A_Expr":{"kind":"AEXPR_OP","name":[{"String":{"sval":"<="}}],"lexpr":{"ColumnRef":{"fields":[{"String":{"sval":"bitnum"}}]}},"rexpr":{"A_Const":{"ival":24}}}}],"boolop":"AND_EXPR"}}'),
  ('a008c0d5-a21b-4411-dbf8-91a68ce505b6', '9085366f-6c6f-49b7-a4c9-c82d816fded5', 'a008fa84-9155-47af-551f-5c7448fc2b82', 'org_chart_edges_child_id_parent_id_chk', 'c', '{a008553a-ca33-4f0f-5826-70b4f112a2c4,a008bf51-9df3-49d0-a65f-9985fdf72cec}', '{"A_Expr":{"kind":"AEXPR_OP","name":[{"String":{"sval":"<>"}}],"lexpr":{"ColumnRef":{"fields":[{"String":{"sval":"child_id"}}]}},"rexpr":{"ColumnRef":{"fields":[{"String":{"sval":"parent_id"}}]}}}}'),
  ('a008ffa5-1534-4855-9970-00f9f0c3aee7', '9085366f-6c6f-49b7-a4c9-c82d816fded5', 'a008f7c4-6d14-4efd-0aaf-afc658459d16', 'crypto_addresses_address_chk', 'c', '{a0082a98-3812-4ccb-2f98-ffd7fb95ae9a}', '{"A_Expr":{"kind":"AEXPR_OP","name":[{"String":{"sval":"~*"}}],"lexpr":{"ColumnRef":{"fields":[{"String":{"sval":"address"}}]}},"rexpr":{"A_Const":{"sval":"^(bc1|[13])[a-zA-HJ-NP-Z0-9]{25,39}$"}}}}');


SET session_replication_role TO DEFAULT;


