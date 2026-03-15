-- Deploy: schemas/agent_db_invites_public/tables/invites/constraints/invites_email_sender_id_key/constraint
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_invites_public/schema
-- requires: schemas/agent_db_invites_public/tables/invites/table


ALTER TABLE "agent_db_invites_public".invites 
  ADD CONSTRAINT invites_email_sender_id_key 
    UNIQUE (email, sender_id);

