-- Deploy: schemas/agentic_db_memberships_public/tables/org_members/columns/actor_id/alterations/alt0000002503
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_memberships_public/schema
-- requires: schemas/agentic_db_memberships_public/tables/org_members/table
-- requires: schemas/agentic_db_memberships_public/tables/org_members/columns/actor_id/column


ALTER TABLE agentic_db_memberships_public.org_members 
  ALTER COLUMN actor_id SET NOT NULL;

