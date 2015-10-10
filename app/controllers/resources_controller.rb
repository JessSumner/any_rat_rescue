class ResourcesController < ApplicationController

  def index
    @vets_phoenix = vets_phoenix
    @vets_tucson = vets_tucson
    @vets_other_areas = vets_other_areas
  end

  private

  def vets_phoenix
    [
      {
        name: "Dr. Bill Langhofer",
        description: "The Scottsdale Veterinary Clinic\n7311 E Thomas Rd,\nScottsdale, AZ 85251",
        website: "http://www.scottsdaleveterinaryclinic.com",
        phone: "480-945-8484",
        map: "https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3327.8127312997385!2d-111.92567908494739!3d33.48022605510408!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x872b0bdcee376107%3A0xcdccf66cf49ac808!2sThe+Scottsdale+Veterinary+Clinic!5e0!3m2!1sen!2sus!4v1444432384302"
      },
      {
        name: "Desert Bloom Mobile Veterinary Service",
        description: "Valleywide mobile service",
        website: "http://www.desertbloom-mobilevet.com",
        phone: "480-839-2824"
      },
      {
        name: "Arrowhead Ranch Animal Hospital",
        description: "6750 W. Deer Valley Rd. Ste. C101,\nGlendale, AZ 85310",
        website: "http://www.arrowheadranchah.com",
        phone: "623-561-2677",
        map: "https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3320.007597737358!2d-112.2070296849426!3d33.68286744455234!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x872b67daf78272d3%3A0x9cf9c3e92a0da0d4!2sArrowhead+Ranch+Animal+Hospital+And+Grooming!5e0!3m2!1sen!2sus!4v1444436664323"
      },
      {
        name: "Dr. Jeffery Jenkins",
        description: "Ahwatukee Animal Care Hospital,\n10855 South 48th St,\n
                      Phoenix, AZ 85044",
        website: "http://ahwatukeeanimalcare.com",
        phone: "480-893-0533",
        map: "https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3332.9152528741993!2d-111.98201948469188!3d33.347163780803655!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x872b05b90fbb3d01%3A0x4859c9ba6f8cd428!2sAhwatukee+Animal+Care+Hospital!5e0!3m2!1sen!2sus!4v1444442186531"
      },
      {
        name: "Dr. Ed Cohen",
        description: "Stetson Hills Animal Hospital\n3780 W. Happy Valley Rd.
                      Ste. 126,\nGlendale, AZ 85310",
        website: "http://www.stetsonhillsanimalhospital.com",
        phone: "623-889-7090",
        map: "https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3318.7938379110155!2d-112.14231498479386!3d33.7142831806993!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x872c9e08a2235981%3A0xdaec331d12e38041!2sStetson+Hills+Animal+Hospital!5e0!3m2!1sen!2sus!4v1444442444516"
      },
      {
        name: "Dr. Kristina Kryda",
        description: "Bell Ridge Animal Hospital\n3539 W. Bell Rd. Ste. 4,\n
                      Phoenix, AZ 85053",
        website: "http://www.bellridgeah.com",
        phone: "602-938-1982",
        map: "https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3321.724600517556!2d-112.1377495847958!3d33.6383820807206!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x872b6ed1153b24eb%3A0xf1b6e1c4a9f99b1e!2sBell+Ridge+Animal+Hospital!5e0!3m2!1sen!2sus!4v1444442498878"
      },
      {
        name: "Dr. Susan Goshert",
        description: "Union Hills Animal Hospital\n18410 N. 19th Ave,\nPhoenix,
                       AZ 85023",
        website: "http://www.unionhillsanimalhospital.com",
        phone: "602-863-6629",
        map: "https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3321.131598285478!2d-112.1028076847954!3d33.653751880716136!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x872b6f0179917f39%3A0xa1c35f404da3b749!2sUnion+Hills+Animal+Hospital!5e0!3m2!1sen!2sus!4v1444442549510"
      },
      {
        name: "Dr. Todd Driggers",
        description: "Avian and Exotic Animal Clinic of Arizona\n
                      7 E. Palo Verde St. Ste. 1,\nGilbert, AZ 85296",
        website: "http://www.aeacarizona.com",
        phone: "480-706-8478",
        map: "https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d5960.545893743354!2d-111.79527562403483!3d33.34740490327595!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0000000000000000%3A0x296dc68ee4a2efdf!2sAvian+%26+Exotic+Animal+Clinic!5e0!3m2!1sen!2sus!4v1444442651840"
      },
      {
        name: "Dr. Marilyn Lieb",
        description: "Desert View Animal Hospital\n4635 East Thomas Rd,\n
                      Phoenix, AZ 85018",
        website: "http://www.dvah.com/",
        phone: "602-955-5500",
        map: "https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3327.836262752473!2d-111.98346378479994!3d33.47961348076562!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x872b0c38ce1839b5%3A0x671ed2a6547e8208!2sDesert+View+Animal+Hospital!5e0!3m2!1sen!2sus!4v1444442704678"
      },
      {
        name: "Dr. Rebecca Johnson",
        description: "Goodyear Animal Hospital\n380 N. Estrella Parkway, Ste. 
                      A6,\nGoodyear, AZ 85338", 
        website: "http://www.goodyearah.com",
        phone: "623-882-9000",
        map: "https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3328.9267806713715!2d-112.3956361848007!3d33.45121408077372!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x872b386542c55b45%3A0xd4ad8fb782cf8be7!2sGoodyear+Animal+Hospital+and+Grooming!5e0!3m2!1sen!2sus!4v1444442758987"
      },
      {
        name: "Alta Mesa Animal Hospital",
        description: "6704 E. Brown Rd,\nMesa, AZ 85205",
        website: "http://www.altamesaanimalhospital.com",
        phone: "480-981-1244",
        map: "https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3329.442762910868!2d-111.68782938480088!3d33.437769380777524!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x872ba55c5c6b45cf%3A0xed173d60c2b832a7!2sAlta+Mesa+Animal+Hospital!5e0!3m2!1sen!2sus!4v1444442812996"
      },
      {
        name: "Arizona Animal Wellness Center",
        description: "3317 S. Higley Rd. Ste. 101,\nGilbert, AZ 85297",
        website: "http://www.arizonaanimalwellnesscenter.com",
        phone: "480-988-3660",
        map: "https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3335.087415923312!2d-111.72250208480476!3d33.290375980819924!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x872bacf959add27b%3A0xd4cc451e314ba7ef!2sArizona+Animal+Wellness+Center!5e0!3m2!1sen!2sus!4v1444442872270"
      },
      {
        name: "Emergency Animal Clinic",
        description: "Locations: Avondale, Gilbert, Peoria, Phoenix and 
                      Scottsdale\nOpen 24 hours",
        website: "http://www.eac-az.com",
        phone: ""
      },
    ]
  end

  def vets_tucson
    [
      {
        name: "Dr. Randall Evans",
        description: "Northwest Pet Clinic\nTwo locations:\n6745 N La Canada Dr,
                      252 W Ina Rd,",
        website: "http://www.northwestpetclinic.com",
        phone: "520-742-4148",
        map:""
      },
      {
        name: "Dr. ShanAnne Edwards",
        description: "Arizona Small Animal Clinic\n10 E 31st St,\nTucson, 
                      AZ 85213",
        website: "http://www.azsmallanimalclinic.com",
        phone: "520-622-6231",
        map: "https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3376.2536208344472!2d-110.97006088483256!3d32.19739598115088!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x86d67093f23a2eab%3A0x83934012f252abb7!2sArizona+Small+Animal+Clinic!5e0!3m2!1sen!2sus!4v1444445646479"
      },
      {
        name: "Dr. Jody Moffett",
        description: "Sierra Animal Hospital\n900 S Hwy 92,\nSierra Vista, 
                      AZ 85635",
        website: "http://www.sierraanimalhospital.com",
        phone: "520-458-8656",
        map: "https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3400.211236104854!2d-110.25961468484876!3d31.545816981361178!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x86d7293d09df785b%3A0x7d744abf030e17b8!2sSierra+Animal+Hospital!5e0!3m2!1sen!2sus!4v1444445583982"
      },
      {
        name: "Dr. Michael Samuels",
        description: "Central Animal Hospital\n4020 E Speedway Blvd,\nTucson, 
                      AZ 85712",
        website: "http://www.centralah.com",
        phone: "520-323-9912",
        map: "https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3374.8268461598313!2d-110.90908878483167!3d32.23582848113872!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x86d671ca0fbabf3d%3A0x14f689faf4f772d!2sCentral+Animal+Hospital!5e0!3m2!1sen!2sus!4v1444445508325"
      }
    ]
  end

  def vets_other_areas
    [
      {
        name: "Dr. William Dean",
        description: "Page Animal Hospital\n87 S. 7th Ave,\nPage, AZ 86040",
        website: "http://pageanimalhospital.com",
        phone: "928-645-2816",
        map: "https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3189.813759436132!2d-111.4600762847067!3d36.918717079924185!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x873414a4a311358d%3A0x35ef0004d0bae78!2sPage+Animal+Hospital!5e0!3m2!1sen!2sus!4v1444446039623"
      },
      {
        name: "Dr. Kim McGill",
        description: "Canyon Pet Hospital\n,1054 East Old Canyon Court,\n
                      Flagstaff, AZ 86001",
        website: "http://www.canyonpet.com",
        phone: "928-774-5197",
        map: "https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3260.6749272179827!2d-111.64056658475462!3d35.18965388031179!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x872d8f1465d8766f%3A0xec02f896a3031b1d!2sCanyon+Pet+Hospital!5e0!3m2!1sen!2sus!4v1444445991928"
      }
    ]
  end
end
