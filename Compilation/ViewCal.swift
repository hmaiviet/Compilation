//
//  ViewCal.swift
//  Compilation
//
//  Created by VietHung on 5/24/16.
//  Copyright © 2016 VietHung. All rights reserved.
//

import UIKit

class ViewCal: UIViewController {
    
    @IBOutlet weak var lbl_hienthi: UILabel!
    @IBOutlet weak var lbl_hienthidau: UILabel!
    var sothunhat = Float(0)
    var sothuhai = Float(0)
    var flag = false
    
    @IBAction func btn_so1(sender: UIButton) {
        if(flag == true){
            lbl_hienthi.text = ""
            flag = false
        }
        
        if(lbl_hienthi.text == "0"){
            lbl_hienthi.text = "1"
        }
        else{
            lbl_hienthi.text = lbl_hienthi.text! + "1"
        }
    }
    @IBAction func btn_so2(sender: UIButton) {
        if(flag == true){
            lbl_hienthi.text = ""
            flag = false
        }
        if(lbl_hienthi.text == "0"){
            lbl_hienthi.text = "2"
        }
        else{
            lbl_hienthi.text = lbl_hienthi.text! + "2"
        }    }
    @IBAction func btn_so3(sender: UIButton) {
        if(flag == true){
            lbl_hienthi.text = ""
            flag = false
        }
        if(lbl_hienthi.text == "0"){
            lbl_hienthi.text = "3"
        }
        else{
            lbl_hienthi.text = lbl_hienthi.text! + "3"
        }
    }
    
    @IBAction func btn_so4(sender: UIButton) {
        if(flag == true){
            lbl_hienthi.text = ""
            flag = false
        }
        if(lbl_hienthi.text == "0"){
            lbl_hienthi.text = "4"
        }
        else{
            lbl_hienthi.text = lbl_hienthi.text! + "4"
        }
    }
    
    @IBAction func btn_so5(sender: UIButton) {
        if(flag == true){
            lbl_hienthi.text = ""
            flag = false
        }
        if(lbl_hienthi.text == "0"){
            lbl_hienthi.text = "5"
        }
        else{
            lbl_hienthi.text = lbl_hienthi.text! + "5"
        }
    }
    
    @IBAction func btn_so6(sender: UIButton) {
        if(flag == true){
            lbl_hienthi.text = ""
            flag = false
        }
        if(lbl_hienthi.text == "0"){
            lbl_hienthi.text = "6"
        }
        else{
            lbl_hienthi.text = lbl_hienthi.text! + "6"
        }
    }
    
    @IBAction func btn_so7(sender: UIButton) {
        if(flag == true){
            lbl_hienthi.text = ""
            flag = false
        }
        if(lbl_hienthi.text == "0"){
            lbl_hienthi.text = "7"
        }
        else{
            lbl_hienthi.text = lbl_hienthi.text! + "7"
        }
    }
    
    @IBAction func btn_so8(sender: UIButton) {
        if(flag == true){
            lbl_hienthi.text = ""
            flag = false
        }
        if(lbl_hienthi.text == "0"){
            lbl_hienthi.text = "8"
        }
        else{
            lbl_hienthi.text = lbl_hienthi.text! + "8"
        }
    }
    
    @IBAction func btn_so9(sender: UIButton) {
        if(flag == true){
            lbl_hienthi.text = ""
            flag = false
        }
        if(lbl_hienthi.text == "0"){
            lbl_hienthi.text = "9"
        }
        else{
            lbl_hienthi.text = lbl_hienthi.text! + "9"
        }
    }
    
    @IBAction func btn_so0(sender: UIButton) {
        if(flag == true){
            lbl_hienthi.text = ""
            flag = false
        }
        if(lbl_hienthi.text == "0"){
            lbl_hienthi.text = "0"
        }
        else{
            lbl_hienthi.text = lbl_hienthi.text! + "0"
        }
    }
    @IBAction func btn_cong(sender: UIButton) {
        lbl_hienthidau.text = "+"
        sothunhat = Float(lbl_hienthi.text!)!
        flag = true
    }
    @IBAction func btn_tru(sender: UIButton) {
        lbl_hienthidau.text = "-"
        sothunhat = Float(lbl_hienthi.text!)!
        flag = true
    }
    @IBAction func btn_nhan(sender: UIButton) {
        lbl_hienthidau.text = "X"
        sothunhat = Float(lbl_hienthi.text!)!
        flag = true
    }
    @IBAction func btn_chia(sender: UIButton) {
        lbl_hienthidau.text = ":"
        sothunhat = Float(lbl_hienthi.text!)!
        flag = true
    }
    @IBAction func btn_bang(sender: UIButton) {
        sothuhai = Float(lbl_hienthi.text!)!
        let ketqua = Tinh(sothunhat, s2: sothuhai)
        if(ketqua == floor(ketqua)){
            lbl_hienthi.text = String(Int(ketqua))
        }
        else{
            lbl_hienthi.text = String(ketqua)
        }
        lbl_hienthidau.text = ""
        flag = true
    }
    @IBAction func btn_clear(sender: UIButton) {
        sothunhat = 0
        sothuhai = 0
        lbl_hienthi.text = "0"
        lbl_hienthidau.text = ""
    }
    
    @IBAction func btn_doidau(sender: UIButton) {
        if(!ktam(lbl_hienthi.text!)){
            lbl_hienthi.text = "-" + lbl_hienthi.text!
        }
        else{
            let sliced = String(lbl_hienthi.text!.characters.dropFirst())
            lbl_hienthi.text = sliced
        }
    }
    @IBAction func btn_cham(sender: UIButton) {
        if(!ktst(lbl_hienthi.text!)){
            lbl_hienthi.text = lbl_hienthi.text! + "."
        }
    }
    @IBAction func btn_ptram(sender: UIButton) {
        let ptram = Float((Float(lbl_hienthi.text!))!/100)
        lbl_hienthi.text = String(ptram)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    func Hienthiso(){
        if(sothunhat == floor(sothunhat)){
            lbl_hienthi.text = String(Int(sothunhat))
        }
        else{
            lbl_hienthi.text = String(sothunhat)
        }
    }
    
    func Tinh(s1: Float, s2: Float) -> Float {
        var ketqua = Float(0)
        if(lbl_hienthidau.text == "+"){
            ketqua = s1+s2
        }
        else if(lbl_hienthidau.text == "-"){
            ketqua = s1-s2
        }
        else if(lbl_hienthidau.text == "X"){
            ketqua = s1*s2
        }
        else if(lbl_hienthidau.text == ":"){
            ketqua = s1/s2
        }
        return ketqua
    }
    func ktst(s: String) -> Bool{
        for i in s.characters{
            if( i == "." ){
                return true
            }
        }
        return false
    }
    func ktam(s: String) -> Bool{
        for i in s.characters{
            if( i == "-" ){
                return true
            }
        }
        return false
    }
}



