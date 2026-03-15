-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-user-identifiers-public/tables/phone_numbers/triggers/timestamps_tg
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-user-identifiers-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-user-identifiers-public/tables/phone_numbers/table


CREATE TRIGGER timestamps_tg
BEFORE INSERT OR UPDATE ON "agent-os-1773546821914-39f1cb9b-user-identifiers-public".phone_numbers
FOR EACH ROW
EXECUTE PROCEDURE stamps.timestamps ( );

