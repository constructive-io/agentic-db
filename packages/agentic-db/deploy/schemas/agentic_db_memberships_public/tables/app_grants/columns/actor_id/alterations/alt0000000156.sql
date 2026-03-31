-- Deploy: schemas/agentic_db_memberships_public/tables/app_grants/columns/actor_id/alterations/alt0000000156
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_memberships_public/schema
-- requires: schemas/agentic_db_memberships_public/tables/app_grants/table
-- requires: schemas/agentic_db_memberships_public/tables/app_grants/columns/actor_id/column


ALTER TABLE "agentic_db_memberships_public".app_grants 
  ALTER COLUMN actor_id SET NOT NULL;

