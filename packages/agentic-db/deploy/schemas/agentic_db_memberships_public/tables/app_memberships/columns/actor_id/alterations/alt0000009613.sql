-- Deploy: schemas/agentic_db_memberships_public/tables/app_memberships/columns/actor_id/alterations/alt0000009613
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_memberships_public/schema
-- requires: schemas/agentic_db_memberships_public/tables/app_memberships/columns/actor_id/column


COMMENT ON COLUMN agentic_db_memberships_public.app_memberships.actor_id IS 'References the user who holds this membership';

