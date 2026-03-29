-- Revert: schemas/agentic_db_memberships_private/tables/org_memberships_sprt/columns/actor_id/alterations/alt0000002866


ALTER TABLE agentic_db_memberships_private.org_memberships_sprt 
  ALTER COLUMN actor_id DROP NOT NULL;


