-- Deploy: schemas/agentic_db_app_public/tables/place_chunks/columns/updated_at/alterations/alt0000006319
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/place_chunks/table
-- requires: schemas/agentic_db_app_public/tables/place_chunks/columns/updated_at/column
-- requires: schemas/agentic_db_app_public/tables/place_chunks/policies/auth_del_entity_membership/policy


ALTER TABLE agentic_db_app_public.place_chunks 
  ALTER COLUMN updated_at SET NOT NULL;

