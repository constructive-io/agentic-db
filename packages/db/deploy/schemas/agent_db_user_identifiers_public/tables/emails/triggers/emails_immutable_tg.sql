-- Deploy: schemas/agent_db_user_identifiers_public/tables/emails/triggers/emails_immutable_tg
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_user_identifiers_public/schema
-- requires: schemas/agent_db_user_identifiers_public/tables/emails/table


CREATE TRIGGER emails_immutable_tg
BEFORE UPDATE ON "agent_db_user_identifiers_public".emails
FOR EACH ROW
WHEN (OLD.email IS DISTINCT FROM NEW.email AND OLD.email IS NOT NULL)
EXECUTE PROCEDURE utils.throw ( 'IMMUTABLE_PROPERTY', 'email' );

