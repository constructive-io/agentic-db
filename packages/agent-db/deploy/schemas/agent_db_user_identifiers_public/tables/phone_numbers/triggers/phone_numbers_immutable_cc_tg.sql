-- Deploy: schemas/agent_db_user_identifiers_public/tables/phone_numbers/triggers/phone_numbers_immutable_cc_tg
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_user_identifiers_public/schema
-- requires: schemas/agent_db_user_identifiers_public/tables/phone_numbers/table


CREATE TRIGGER phone_numbers_immutable_cc_tg
BEFORE UPDATE ON "agent_db_user_identifiers_public".phone_numbers
FOR EACH ROW
WHEN (OLD.cc IS DISTINCT FROM NEW.cc AND OLD.cc IS NOT NULL)
EXECUTE PROCEDURE utils.throw ( 'IMMUTABLE_PROPERTY', 'cc' );

