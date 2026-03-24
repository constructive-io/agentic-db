-- Deploy: schemas/agentic_db_memberships_public/tables/app_memberships/columns/actor_id/alterations/alt0000001445
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_memberships_public/schema
-- requires: schemas/agentic_db_private/schema/default_function_privs/anonymous
-- requires: schemas/agentic_db_memberships_public/tables/app_memberships/columns/actor_id/column


COMMENT ON COLUMN agentic_db_memberships_public.app_memberships.actor_id IS 'References the user who holds this membership';

