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
  ('019d37b9-b858-7301-b9aa-7563ef274903', '019d37b9-b4ba-747d-9bd7-98d3ec25d59c', '019d37b9-b7ad-745d-9c54-c5b0658c3ae4', 'users_username_chk', 'c', '{019d37b9-b842-7664-8993-b5bd6d956573}', '{"A_Expr":{"kind":"AEXPR_OP","name":[{"String":{"sval":"<="}}],"lexpr":{"FuncCall":{"args":[{"ColumnRef":{"fields":[{"String":{"sval":"username"}}]}}],"funcname":[{"String":{"sval":"character_length"}}]}},"rexpr":{"A_Const":{"ival":256}}}}'),
  ('019d37b9-b89a-7384-972c-1dd45eb4e127', '019d37b9-b4ba-747d-9bd7-98d3ec25d59c', '019d37b9-b7ad-745d-9c54-c5b0658c3ae4', 'users_display_name_chk', 'c', '{019d37b9-b887-7627-b17c-34253024e0b7}', '{"A_Expr":{"kind":"AEXPR_OP","name":[{"String":{"sval":"<="}}],"lexpr":{"FuncCall":{"args":[{"ColumnRef":{"fields":[{"String":{"sval":"display_name"}}]}}],"funcname":[{"String":{"sval":"character_length"}}]}},"rexpr":{"A_Const":{"ival":256}}}}'),
  ('019d37b9-bf0f-714b-b145-e584868bcb0a', '019d37b9-b4ba-747d-9bd7-98d3ec25d59c', '019d37b9-be51-7edc-9a46-789aa38be324', 'app_permissions_bitnum_chk', 'c', '{019d37b9-befe-7b21-aebc-72128444f33d}', '{"BoolExpr":{"args":[{"A_Expr":{"kind":"AEXPR_OP","name":[{"String":{"sval":">="}}],"lexpr":{"ColumnRef":{"fields":[{"String":{"sval":"bitnum"}}]}},"rexpr":{"A_Const":{"ival":1}}}},{"A_Expr":{"kind":"AEXPR_OP","name":[{"String":{"sval":"<="}}],"lexpr":{"ColumnRef":{"fields":[{"String":{"sval":"bitnum"}}]}},"rexpr":{"A_Const":{"ival":24}}}}],"boolop":"AND_EXPR"}}'),
  ('019d37b9-f28a-750f-95b6-1808b8487e25', '019d37b9-b4ba-747d-9bd7-98d3ec25d59c', '019d37b9-f1c4-7631-be74-02fadb8f3940', 'org_permissions_bitnum_chk', 'c', '{019d37b9-f277-70aa-8098-8b7422b656c2}', '{"BoolExpr":{"args":[{"A_Expr":{"kind":"AEXPR_OP","name":[{"String":{"sval":">="}}],"lexpr":{"ColumnRef":{"fields":[{"String":{"sval":"bitnum"}}]}},"rexpr":{"A_Const":{"ival":1}}}},{"A_Expr":{"kind":"AEXPR_OP","name":[{"String":{"sval":"<="}}],"lexpr":{"ColumnRef":{"fields":[{"String":{"sval":"bitnum"}}]}},"rexpr":{"A_Const":{"ival":24}}}}],"boolop":"AND_EXPR"}}'),
  ('019d37ba-363f-74bb-bb87-c038415f34cf', '019d37b9-b4ba-747d-9bd7-98d3ec25d59c', '019d37ba-338d-72e0-a05b-78b915b15742', 'org_chart_edges_child_id_parent_id_chk', 'c', '{019d37ba-34f3-75bb-b862-ac9a7f31cd72,019d37ba-3548-7c94-a1a1-f18c291a5d94}', '{"A_Expr":{"kind":"AEXPR_OP","name":[{"String":{"sval":"<>"}}],"lexpr":{"ColumnRef":{"fields":[{"String":{"sval":"child_id"}}]}},"rexpr":{"ColumnRef":{"fields":[{"String":{"sval":"parent_id"}}]}}}}'),
  ('019d37ba-63f7-77f7-8cb5-b8f3a2c65201', '019d37b9-b4ba-747d-9bd7-98d3ec25d59c', '019d37ba-62ae-7753-be7a-7aa895f9a276', 'crypto_addresses_address_chk', 'c', '{019d37ba-63be-7858-938e-a0d4f11222fa}', '{"A_Expr":{"kind":"AEXPR_OP","name":[{"String":{"sval":"~*"}}],"lexpr":{"ColumnRef":{"fields":[{"String":{"sval":"address"}}]}},"rexpr":{"A_Const":{"sval":"^(bc1|[13])[a-zA-HJ-NP-Z0-9]{25,39}$"}}}}');


SET session_replication_role TO DEFAULT;


