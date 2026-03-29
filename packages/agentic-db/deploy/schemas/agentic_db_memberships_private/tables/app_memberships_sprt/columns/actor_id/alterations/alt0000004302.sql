-- Deploy: schemas/agentic_db_memberships_private/tables/app_memberships_sprt/columns/actor_id/alterations/alt0000004302
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_memberships_private/schema
-- requires: schemas/agentic_db_memberships_private/tables/app_memberships_sprt/table
-- requires: schemas/agentic_db_memberships_private/tables/app_memberships_sprt/columns/actor_id/column


ALTER TABLE agentic_db_memberships_private.app_memberships_sprt 
  ALTER COLUMN actor_id SET NOT NULL;

