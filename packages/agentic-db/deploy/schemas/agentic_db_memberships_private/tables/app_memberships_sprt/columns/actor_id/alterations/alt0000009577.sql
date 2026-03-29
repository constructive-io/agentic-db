-- Deploy: schemas/agentic_db_memberships_private/tables/app_memberships_sprt/columns/actor_id/alterations/alt0000009577
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_memberships_private/schema
-- requires: schemas/agentic_db_memberships_private/tables/app_memberships_sprt/columns/actor_id/column


COMMENT ON COLUMN agentic_db_memberships_private.app_memberships_sprt.actor_id IS 'References the user whose permissions are being resolved';

