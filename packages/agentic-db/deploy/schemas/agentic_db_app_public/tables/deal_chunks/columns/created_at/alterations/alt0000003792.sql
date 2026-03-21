-- Deploy: schemas/agentic_db_app_public/tables/deal_chunks/columns/created_at/alterations/alt0000003792
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/deal_chunks/table
-- requires: schemas/agentic_db_app_public/tables/deal_chunks/columns/created_at/column
-- requires: schemas/agentic_db_app_public/tables/deal_chunks/policies/auth_del_entity_membership/policy


ALTER TABLE agentic_db_app_public.deal_chunks 
  ALTER COLUMN created_at SET NOT NULL;

