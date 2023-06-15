module dragon::game {
    use std::signer;
    use std::vector;
    use aptos_std::simple_map::{Self, SimpleMap};
    use aptos_token_objects::collection;

    use aptos_framework::timestamp;

    #[test_only]
    use aptos_framework::account;

    // Structs 
    struct Game has key {
        collections: SimpleMap<address, Object<Collection>> 
    }

    // Functions 
    public fun create_dragon_collection(admin: &signer) {
        //Only Admin function 
        let admin_addr = signer::address_of(admin);
        assert!(admin_addr == @admin, 0);

        //Create collections
        // It can generate an object signer to add resources to the collection object.
        let collection_constructor_ref = collection::create_unlimited_collection(
            admin,
            "Description",
            "My Collection",
            royalty,
            "https://mycollection.com",
        );

        let collections = simple
        //Create new game
        let game = Game {
            collections: simple_map::create();
        }

        // Constructor ref can be exchanged for signer to add resources to the collection object.
        // let collection_signer = &object::generate_signer(collection_constructor_ref);
        // move_to(collection_signer, MyCollectionMetadata { creation_timestamp_secs: timestamp::now_seconds() } })
    }


    public fun create_dragon() {
    /*
    Create a new collection of monsters
    Define their starting characteristics
    Let the Breeder know about the new monster race
    Create a new monster token based on available collection
     */
    
    }

    public fun create_sword() {
    /*
    Supply a new collection of Equipment
    Check the combine amount is met to forge a new equipment
    Create a new Equipment token from provided collection
     */
    }

    public fun breed_dragons() {
    /*
    Signer of the transaction must be the owner of the NFTs
    NFTs must be from the same collection
    Blocks transfer of the NFTs for amount of time specified while creating the collection
     */
    }

    public fun hatch_dragon() {
    /*
    Unlocks monsters locked for breeding if the breeding finished
    Signer of the transaction must be the owner of the NFTs
    Creates a new monster NFT with combined properties and transfers it to the owner
     */
    }

    public fun combine_swords() {
    /*
    Burns amount of equipment tokens specified while creating the collection
    Tokens must be from the same collection
    Signer of the transaction must be the owner of the NFTs
    Creates a new equipment token with combined properties
     */
    }

    ///NOTE: 
    /// NFTs: 
    /// - rồng collections
    /// - thời gian breed => lock trong time chich
    /// - rong con collections
    /// - kiem collections
    /// - kiem moi collections
    
}
