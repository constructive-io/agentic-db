-- Deploy: schemas/agentic_db_memberships_public/tables/org_owner_grants/columns/actor_id/alterations/alt0000005083
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_memberships_public/schema
-- requires: schemas/agentic_db_memberships_public/tables/org_owner_grants/table
-- requires: schemas/agentic_db_memberships_public/tables/org_owner_grants/columns/actor_id/column


ALTER TABLE agentic_db_memberships_public.org_owner_grants 
  ALTER COLUMN actor_id SET NOT NULL;

