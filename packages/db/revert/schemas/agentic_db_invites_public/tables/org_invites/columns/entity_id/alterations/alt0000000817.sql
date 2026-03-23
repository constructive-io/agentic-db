-- Revert: schemas/agentic_db_invites_public/tables/org_invites/columns/entity_id/alterations/alt0000000817


ALTER TABLE "agentic_db_invites_public".org_invites 
  ALTER COLUMN entity_id DROP NOT NULL;


