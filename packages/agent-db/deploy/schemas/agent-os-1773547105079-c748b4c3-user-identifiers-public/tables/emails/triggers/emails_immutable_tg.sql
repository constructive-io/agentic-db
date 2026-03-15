-- Deploy: schemas/agent-os-1773547105079-c748b4c3-user-identifiers-public/tables/emails/triggers/emails_immutable_tg
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-user-identifiers-public/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-user-identifiers-public/tables/emails/table


CREATE TRIGGER emails_immutable_tg
BEFORE UPDATE ON "agent-os-1773547105079-c748b4c3-user-identifiers-public".emails
FOR EACH ROW
WHEN (OLD.email IS DISTINCT FROM NEW.email AND OLD.email IS NOT NULL)
EXECUTE PROCEDURE utils.throw ( 'IMMUTABLE_PROPERTY', 'email' );

