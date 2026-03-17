-- Revert: schemas/agentic_db_invites_public/tables/invites/columns/sender_id/column


ALTER TABLE "agentic_db_invites_public".invites 
  DROP COLUMN sender_id RESTRICT;


