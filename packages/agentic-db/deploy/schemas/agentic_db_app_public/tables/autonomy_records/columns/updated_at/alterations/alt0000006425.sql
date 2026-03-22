-- Deploy: schemas/agentic_db_app_public/tables/autonomy_records/columns/updated_at/alterations/alt0000006425
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/autonomy_records/table
-- requires: schemas/agentic_db_app_public/tables/autonomy_records/columns/updated_at/column
-- requires: schemas/agentic_db_app_public/tables/autonomy_records/policies/auth_del_entity_membership/policy


ALTER TABLE agentic_db_app_public.autonomy_records 
  ALTER COLUMN updated_at SET NOT NULL;

