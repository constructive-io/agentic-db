-- Revert: schemas/agentic_db_memberships_private/tables/app_memberships_sprt/columns/actor_id/alterations/alt0000001253


ALTER TABLE agentic_db_memberships_private.app_memberships_sprt 
  ALTER COLUMN actor_id DROP NOT NULL;


