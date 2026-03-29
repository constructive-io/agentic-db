-- Deploy: schemas/agentic_db_memberships_public/tables/app_memberships/columns/actor_id/alterations/alt0000009612
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_memberships_public/schema
-- requires: schemas/agentic_db_memberships_public/tables/app_memberships/table
-- requires: schemas/agentic_db_memberships_public/tables/app_memberships/columns/actor_id/column


ALTER TABLE agentic_db_memberships_public.app_memberships 
  ALTER COLUMN actor_id SET NOT NULL;

