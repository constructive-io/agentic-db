-- Revert: schemas/agentic_db_invites_public/tables/claimed_invites/columns/sender_id/column


ALTER TABLE "agentic_db_invites_public".claimed_invites 
  DROP COLUMN sender_id RESTRICT;


