-- Deploy: schemas/agent-os-1773551593867-bac64076-user-identifiers-public/tables/emails/triggers/timestamps_tg
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-user-identifiers-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-user-identifiers-public/tables/emails/table


CREATE TRIGGER timestamps_tg
BEFORE INSERT OR UPDATE ON "agent-os-1773551593867-bac64076-user-identifiers-public".emails
FOR EACH ROW
EXECUTE PROCEDURE stamps.timestamps ( );

