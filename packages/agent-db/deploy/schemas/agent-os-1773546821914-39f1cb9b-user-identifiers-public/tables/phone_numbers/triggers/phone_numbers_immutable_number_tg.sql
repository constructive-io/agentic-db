-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-user-identifiers-public/tables/phone_numbers/triggers/phone_numbers_immutable_number_tg
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-user-identifiers-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-user-identifiers-public/tables/phone_numbers/table


CREATE TRIGGER phone_numbers_immutable_number_tg
BEFORE UPDATE ON "agent-os-1773546821914-39f1cb9b-user-identifiers-public".phone_numbers
FOR EACH ROW
WHEN (OLD.number IS DISTINCT FROM NEW.number AND OLD.number IS NOT NULL)
EXECUTE PROCEDURE utils.throw ( 'IMMUTABLE_PROPERTY', 'number' );

