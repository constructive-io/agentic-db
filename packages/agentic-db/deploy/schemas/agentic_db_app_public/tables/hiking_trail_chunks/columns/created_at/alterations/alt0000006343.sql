-- Deploy: schemas/agentic_db_app_public/tables/hiking_trail_chunks/columns/created_at/alterations/alt0000006343
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/hiking_trail_chunks/table
-- requires: schemas/agentic_db_app_public/tables/hiking_trail_chunks/columns/created_at/column
-- requires: schemas/agentic_db_app_public/tables/hiking_trail_chunks/policies/auth_del_entity_membership/policy


ALTER TABLE agentic_db_app_public.hiking_trail_chunks 
  ALTER COLUMN created_at SET NOT NULL;

