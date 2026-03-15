-- Deploy: schemas/agent-os-1773551593867-bac64076-user-identifiers-public/tables/phone_numbers/triggers/phone_numbers_immutable_cc_tg
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-user-identifiers-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-user-identifiers-public/tables/phone_numbers/table


CREATE TRIGGER phone_numbers_immutable_cc_tg
BEFORE UPDATE ON "agent-os-1773551593867-bac64076-user-identifiers-public".phone_numbers
FOR EACH ROW
WHEN (OLD.cc IS DISTINCT FROM NEW.cc AND OLD.cc IS NOT NULL)
EXECUTE PROCEDURE utils.throw ( 'IMMUTABLE_PROPERTY', 'cc' );

